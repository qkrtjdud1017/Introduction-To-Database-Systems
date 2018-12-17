import java.io.FileInputStream;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Properties;

/**
 * Runs queries against a back-end database
 */
public class Query
{
  private String configFilename;
  private Properties configProps = new Properties();

  private String jSQLDriver;
  private String jSQLUrl;
  private String jSQLUser;
  private String jSQLPassword;

  // DB Connection
  private Connection conn;

  // Logged In User
  private String username; // customer username is unique

  // itinerary
  private ArrayList<Itinerary> itineraryList;

  // reservation count
  private int reservation_count;

  // remaining balance
  private int remaining;
  
  // Canned queries
  private static final String GET_USER = "SELECT * FROM USERS WHERE username = ?;";
  private PreparedStatement getUserStatement;

  // transactions
  private static final String BEGIN_TRANSACTION_SQL = "SET TRANSACTION ISOLATION LEVEL SERIALIZABLE; BEGIN TRANSACTION;";
  private PreparedStatement beginTransactionStatement;

  private static final String COMMIT_SQL = "COMMIT TRANSACTION";
  private PreparedStatement commitTransactionStatement;

  private static final String ROLLBACK_SQL = "ROLLBACK TRANSACTION";
  private PreparedStatement rollbackTransactionStatement;

  // flights
  private static final String GET_DIRECT_FLIGHT =
  "SELECT TOP (?) * FROM Flights " +
  "WHERE origin_city = ? AND dest_city = ? AND day_of_month = ? " +
  "AND canceled <> 1 ORDER BY actual_time ASC, fid;";
  private PreparedStatement getDirectFlightStatement;

  private static final String GET_INDIRECT_FLIGHT =
  "SELECT TOP (?) * FROM Flights F1, Flights F2 " +
  "WHERE F1.origin_city = ? AND F1.dest_city = F2.origin_city AND F2.dest_city = ? " +
  "AND F1.day_of_month = F2.day_of_month AND F1.day_of_month = ? " +
  "AND F1.canceled <> 1 AND F2.canceled <> 1 " +
  "ORDER BY (F1.actual_time + F2.actual_time) ASC, F1.fid, F2.fid;";
  private PreparedStatement getIndirectFlightStatement;

  private static final String GET_RESERVATIONS = "SELECT * FROM RESERVATIONS WHERE username = ?;";
  private PreparedStatement getReservationsStatement;
  
  private static final String GET_RESERVATION_WITH_ID = "SELECT * FROM RESERVATIONS WHERE rid = ?;";
  private PreparedStatement getReservationWithIdStatement;

  private static final String GET_CAPACITIES = "SELECT capacity FROM Capacities WHERE fid = ?;";
  private PreparedStatement getCapacitiesStatement;

  private static final String UPDATE_CAPACITIES = "UPDATE Capacities SET capacity = ((SELECT capacity FROM Capacities WHERE fid = ?) -1) WHERE fid = ?;";
  private PreparedStatement updateCapacitiesStatement;
  
  private static final String PLUS_CAPACITY = "UPDATE Capacities SET capacity = ((SELECT capacity FROM Capacities WHERE fid = ?) +1) WHERE fid = ?;";
  private PreparedStatement plusCapacityStatement;

  private static final String GET_FLIGHT = "SELECT * FROM FLIGHTS WHERE fid = ?;";
  private PreparedStatement getFlightStatement;

  private static final String GET_PAID = "SELECT * FROM RESERVATIONS WHERE rid = ?;";
  private PreparedStatement getPaidStatement;
  
  private static final String UPDATE_PAID = "UPDATE RESERVATIONS SET paid = ? WHERE rid = ?;";
  private PreparedStatement updatePaidStatement;
  
  private static final String GET_BALANCE = "SELECT balance FROM USERS WHERE username = ?;";
  private PreparedStatement getBalanceStatement;
  
  private static final String UPDATE_BALANCE = "UPDATE USERS SET balance = ? WHERE username = ?;";
  private PreparedStatement updateBalanceStatement;
  
  private static final String GET_COUNT = "SELECT reservation_count FROM USERS WHERE username = ?;";
  private PreparedStatement getCountStatement;
  
  private static final String UPDATE_COUNT = "UPDATE USERS SET reservation_count = ? WHERE username = ?;";
  private PreparedStatement updateCountStatement;
  
  // insertions
  private static final String CREATE_USER = "INSERT INTO USERS VALUES (?, ?, ?, ?);";
  private PreparedStatement createUserStatement;

  private static final String INSERT_CAPACITY = "INSERT INTO CAPACITIES VALUES (?, ?);";
  private PreparedStatement insertCapacityStatement;

  private static final String CREATE_RESERVATION = "INSERT INTO RESERVATIONS VALUES (?,?,?,?,?,?,?);";
  private PreparedStatement createReservationStatement;
 
  private static final String CLEAR_TABLES = "DELETE FROM RESERVATIONS; DELETE FROM USERS; DELETE FROM CAPACITIES;";
  private PreparedStatement clearTableStatement;
  
  private static final String CANCEL_RESERVATION = "UPDATE RESERVATIONS SET username = null WHERE rid = ?;";
  private PreparedStatement cancelReservationStatement;

  class Flight
  {
    public int fid;
    public int dayOfMonth;
    public String carrierId;
    public String flightNum;
    public String originCity;
    public String destCity;
    public int time;
    public int capacity;
    public int price;

    @Override
    public String toString()
    {
      return "ID: " + fid + " Day: " + dayOfMonth + " Carrier: " + carrierId +
              " Number: " + flightNum + " Origin: " + originCity + " Dest: " + destCity + " Duration: " + time +
              " Capacity: " + capacity + " Price: " + price;
    }
  }

  class Itinerary
  {
    public Flight flight_one;
    public Flight flight_two;
    public int day;
    public int cost;
  }

  public Query(String configFilename)
  {
    this.configFilename = configFilename;
  }

  /* Connection code to SQL Azure.  */
  public void openConnection() throws Exception
  {
    configProps.load(new FileInputStream(configFilename));

    jSQLDriver = configProps.getProperty("flightservice.jdbc_driver");
    jSQLUrl = configProps.getProperty("flightservice.url");
    jSQLUser = configProps.getProperty("flightservice.sqlazure_username");
    jSQLPassword = configProps.getProperty("flightservice.sqlazure_password");

    /* load jdbc drivers */
    Class.forName(jSQLDriver).newInstance();

    /* open connections to the flights database */
    conn = DriverManager.getConnection(jSQLUrl, // database
            jSQLUser, // user
            jSQLPassword); // password

    conn.setAutoCommit(true); //by default automatically commit after each statement

    /* You will also want to appropriately set the transaction's isolation level through:
       conn.setTransactionIsolation(...)
       See Connection class' JavaDoc for details.
    */
    conn.setTransactionIsolation(Connection.TRANSACTION_SERIALIZABLE);
  }

  public void closeConnection() throws Exception
  {
    conn.close();
  }

  /**
   * Clear the data in any custom tables created. Do not drop any tables and do not
   * clear the flights table. You should clear any tables you use to store reservations
   * and reset the next reservation ID to be 1.
   */
  public void clearTables() throws SQLException
  {
	  clearTableStatement.executeUpdate();
	  conn.setAutoCommit(true);
	  itineraryList = null;
  }

  /**
   * prepare all the SQL statements in this method.
   * "preparing" a statement is almost like compiling it.
   * Note that the parameters (with ?) are still not filled in
   */
  public void prepareStatements() throws Exception
  {
    beginTransactionStatement = conn.prepareStatement(BEGIN_TRANSACTION_SQL);
    commitTransactionStatement = conn.prepareStatement(COMMIT_SQL);
    rollbackTransactionStatement = conn.prepareStatement(ROLLBACK_SQL);
    getUserStatement = conn.prepareStatement(GET_USER);
    getDirectFlightStatement = conn.prepareStatement(GET_DIRECT_FLIGHT);
    getIndirectFlightStatement = conn.prepareStatement(GET_INDIRECT_FLIGHT);
    getReservationsStatement = conn.prepareStatement(GET_RESERVATIONS);
    getCapacitiesStatement = conn.prepareStatement(GET_CAPACITIES);
    updateCapacitiesStatement = conn.prepareStatement(UPDATE_CAPACITIES);
    getFlightStatement = conn.prepareStatement(GET_FLIGHT);
    getPaidStatement = conn.prepareStatement(GET_PAID);
    updatePaidStatement = conn.prepareStatement(UPDATE_PAID);
    getBalanceStatement = conn.prepareStatement(GET_BALANCE);
    updateBalanceStatement = conn.prepareStatement(UPDATE_BALANCE);
    createUserStatement = conn.prepareStatement(CREATE_USER);
    insertCapacityStatement = conn.prepareStatement(INSERT_CAPACITY);
    createReservationStatement = conn.prepareStatement(CREATE_RESERVATION);
    getCountStatement = conn.prepareStatement(GET_COUNT);
    updateCountStatement = conn.prepareStatement(UPDATE_COUNT);
    getReservationWithIdStatement = conn.prepareStatement(GET_RESERVATION_WITH_ID);
    clearTableStatement = conn.prepareStatement(CLEAR_TABLES);
    plusCapacityStatement = conn.prepareStatement(PLUS_CAPACITY);
    cancelReservationStatement = conn.prepareStatement(CANCEL_RESERVATION);
  }

  /**
   * Takes a user's username and password and attempts to log the user in.
   *
   * @param username
   * @param password
   *
   * @return If someone has already logged in, then return "User already logged in\n"
   * For all other errors, return "Login failed\n".
   *
   * Otherwise, return "Logged in as [username]\n".
   */
  public String transaction_login(String username, String password)
  {
    if (this.username != null) {
      return "User already logged in\n";
    }
    try{
      beginTransaction();
      getUserStatement.clearParameters();
      getUserStatement.setString(1,username);
      //getUserStatement.setString(2,password);
      ResultSet result = getUserStatement.executeQuery();
      if (result.next()) {
        this.username = username;
        result.close();
        commitTransaction();
        return "Logged in as "+ username +"\n";
      }
      result.close();
      rollbackTransaction();
    } catch (SQLException e) {e.printStackTrace();}
    return "Login failed\n";
  }

  /**
   * Implement the create user function.
   *
   * @param username new user's username. User names are unique the system.
   * @param password new user's password.
   * @param initAmount initial amount to deposit into the user's account, should be >= 0 (failure otherwise).
   *
   * @return either "Created user {@code username}\n" or "Failed to create user\n" if failed.
   */
  public String transaction_createCustomer (String username, String password, int initAmount)
  {
    if(initAmount < 0) { return "Failed to create user\n";}
    try
    {
      beginTransaction();
      createUserStatement.clearParameters();
      createUserStatement.setString(1,username);
      createUserStatement.setString(2,password);
      createUserStatement.setInt(3,initAmount);
      createUserStatement.setInt(4, 0);
      createUserStatement.execute();
      commitTransaction();
    } catch (SQLException e) {
    	try {
    		rollbackTransaction();
    		return "Failed to create user\n";
    	} catch (SQLException err) {
    		err.printStackTrace();
    	}
    }
    return "Created user " + username + "\n";  
  }

  /**
   * Implement the search function.
   *
   * Searches for flights from the given origin city to the given destination
   * city, on the given day of the month. If {@code directFlight} is true, it only
   * searches for direct flights, otherwise is searches for direct flights
   * and flights with two "hops." Only searches for up to the number of
   * itineraries given by {@code numberOfItineraries}.
   *
   * The results are sorted based on total flight time.
   *
   * @param originCity
   * @param destinationCity
   * @param directFlight if true, then only search for direct flights, otherwise include indirect flights as well
   * @param dayOfMonth
   * @param numberOfItineraries number of itineraries to return
   *
   * @return If no itineraries were found, return "No flights match your selection\n".
   * If an error occurs, then return "Failed to search\n".
   *
   * Otherwise, the sorted itineraries printed in the following format:
   *
   * Itinerary [itinerary number]: [number of flights] flight(s), [total flight time] minutes\n
   * [first flight in itinerary]\n
   * ...
   * [last flight in itinerary]\n
   *
   * Each flight should be printed using the same format as in the {@code Flight} class. Itinerary numbers
   * in each search should always start from 0 and increase by 1.
   *
   * @see Flight#toString()
   */
  public String transaction_search(String originCity, String destinationCity, boolean directFlight, int dayOfMonth,
                                   int numberOfItineraries)
  {
    if (originCity.isEmpty() || destinationCity.isEmpty()|| dayOfMonth <= 0 || numberOfItineraries <= 0) {
      return "Failed to search\n";
    }
    StringBuffer sb = new StringBuffer();

    int numItiner = numberOfItineraries;

    this.itineraryList = new ArrayList<>();
    try
    {
      beginTransaction();
      getDirectFlightStatement.clearParameters();
      getDirectFlightStatement.setInt(1, numberOfItineraries);
      getDirectFlightStatement.setString(2,originCity);
      getDirectFlightStatement.setString(3,destinationCity);
      getDirectFlightStatement.setInt(4,dayOfMonth);
      ResultSet results = getDirectFlightStatement.executeQuery();
      if(results == null) {return "No flights match your selection\n";}
      while(numItiner > 0 && results.next()) {
        Flight oneHopFlight = setFlight(results, true);
        Itinerary itiner = setItinerary(oneHopFlight, null, dayOfMonth, oneHopFlight.price);
        this.itineraryList.add(itiner);
        sb.append("Itinerary " + (numberOfItineraries - numItiner) + ": 1 flight(s), " + oneHopFlight.time + " minutes\n");
        sb.append(oneHopFlight.toString() + "\n");
        numItiner--;
      }
      results.close();

      if(numItiner > 0 && !directFlight) {
        getIndirectFlightStatement.clearParameters();
        getIndirectFlightStatement.setInt(1,numItiner);
        getIndirectFlightStatement.setString(2,originCity);
        getIndirectFlightStatement.setString(3,destinationCity);
        getIndirectFlightStatement.setInt(4,dayOfMonth);
        ResultSet twohops = getIndirectFlightStatement.executeQuery();
        if(twohops == null) {return "No flights match your selection\n";}
        while(numItiner > 0 && twohops.next()) {
          Flight first = setFlight(twohops, true);
          Flight second = setFlight(twohops, false);
          Itinerary it = setItinerary(first, second, dayOfMonth, first.price+second.price);
          this.itineraryList.add(it);
          sb.append("Itinerary " + (numberOfItineraries - numItiner) + ": 2 flight(s), " + (first.time+second.time) + " minutes\n");
          sb.append(first.toString() + "\n");
          sb.append(second.toString() + "\n");
          numItiner--;
        }
        twohops.close();
      }
      commitTransaction();
    } catch (SQLException e){ e.printStackTrace();}
    return sb.toString();
  }

  private Flight setFlight(ResultSet results, boolean directFlight) throws SQLException{
	int jump = 0;
    if (directFlight == false) {jump = 18;}
    Flight flight = new Flight();
    flight.fid = results.getInt(1+jump);
    flight.dayOfMonth = results.getInt(3+jump);
    flight.carrierId = results.getString(5+jump);
    flight.flightNum = results.getString(6+jump);
    flight.originCity = results.getString(7+jump);
    flight.destCity = results.getString(9+jump);
    flight.time = results.getInt(15+jump);
    flight.capacity = results.getInt(17+jump);
    flight.price = results.getInt(18+jump);
    return flight;
  }

  private Itinerary setItinerary(Flight flight_one, Flight flight_two, int day, int cost) throws SQLException{
    Itinerary itiner = new Itinerary();
    itiner.flight_one = flight_one;
    itiner.flight_two = flight_two;
    itiner.day = day;
    itiner.cost = cost;
    return itiner;
  }

  /**
   * Implements the book itinerary function.
   *
   * @param itineraryId ID of the itinerary to book. This must be one that is returned by search in the current session.
   *
   * @return If the user is not logged in, then return "Cannot book reservations, not logged in\n".
   * If try to book an itinerary with invalid ID, then return "No such itinerary {@code itineraryId}\n".
   * If the user already has a reservation on the same day as the one that they are trying to book now, then return
   * "You cannot book two flights in the same day\n".
   * For all other errors, return "Booking failed\n".
   *
   * And if booking succeeded, return "Booked flight(s), reservation ID: [reservationId]\n" where
   * reservationId is a unique number in the reservation system that starts from 1 and increments by 1 each time a
   * successful reservation is made by any user in the system.
   */
  public String transaction_book(int itineraryId)
  {
    if(this.username == null) {
      return "Cannot book reservations, not logged in\n";
    }
    if(itineraryId < 0 || itineraryId >= this.itineraryList.size()) {
      return "No such itinerary " + itineraryId + "\n";
    }
    if (this.itineraryList.size() == 0) {
      return "Booking failed\n";
    }
    Itinerary itiner = this.itineraryList.get(itineraryId);
    try
    {
      beginTransaction();
      getReservationsStatement.clearParameters();
      getReservationsStatement.setString(1,this.username);
      ResultSet result = getReservationsStatement.executeQuery();
      while(result.next()) {
        int date = result.getInt("day");
        if(itiner.day == date) {
          result.close();
          rollbackTransaction();
          return "You cannot book two flights in the same day\n";
        }
      }
      result.close();
      
      insertCapacityStatement.clearParameters();
      insertCapacityStatement.setInt(1,itiner.flight_one.fid);
      insertCapacityStatement.setInt(2,itiner.flight_one.capacity);
      insertCapacityStatement.execute();

      getCapacitiesStatement.clearParameters();
      getCapacitiesStatement.setInt(1,itiner.flight_one.fid);
      ResultSet capacityResults = getCapacitiesStatement.executeQuery();
      capacityResults.next();
      int cap = capacityResults.getInt("capacity");
      capacityResults.close();

      if(cap == 0) {
        rollbackTransaction();
        return "Booking failed\n";
      }

      updateCapacitiesStatement.clearParameters();
      updateCapacitiesStatement.setInt(1,itiner.flight_one.fid);
      updateCapacitiesStatement.setInt(2,itiner.flight_one.fid);
      updateCapacitiesStatement.executeUpdate();

      if (itiner.flight_two != null) {
        insertCapacityStatement.clearParameters();
        insertCapacityStatement.setInt(1,itiner.flight_two.fid);
        insertCapacityStatement.execute();

        getCapacitiesStatement.clearParameters();
        getCapacitiesStatement.setInt(1,itiner.flight_two.fid);
        ResultSet capacityResults2 = getCapacitiesStatement.executeQuery();
        capacityResults2.next();
        int cap2 = capacityResults2.getInt("capacity");
        capacityResults2.close();

        if(cap2 == 0) {
          rollbackTransaction();
          return "Booking failed\n";
        }

        updateCapacitiesStatement.clearParameters();
        updateCapacitiesStatement.setInt(1,itiner.flight_two.fid);
        updateCapacitiesStatement.setInt(2,itiner.flight_two.fid);
        updateCapacitiesStatement.executeUpdate();
      }

      getCountStatement.clearParameters();
      getCountStatement.setString(1, this.username);
      ResultSet count_result = getCountStatement.executeQuery();
      count_result.next();
      int count = count_result.getInt(1);
      count = count + 1;
      count_result.close();
      reservation_count = count;
      updateCountStatement.clearParameters();
      updateCountStatement.setInt(1, count);
      updateCountStatement.setString(2, this.username);
      updateCountStatement.executeUpdate();

      createReservationStatement.clearParameters();
      createReservationStatement.setInt(1,count);
      createReservationStatement.setInt(2,0);
      createReservationStatement.setInt(3,itiner.cost);
      createReservationStatement.setInt(4,itiner.flight_one.fid);
      if (itiner.flight_two == null) {  createReservationStatement.setInt(5,0);
      } else { createReservationStatement.setInt(5,itiner.flight_two.fid);}
      createReservationStatement.setString(6,this.username);
      createReservationStatement.setInt(7, itiner.flight_one.dayOfMonth);
      createReservationStatement.execute();
      commitTransaction();
    } catch (SQLException e) {
    	try {
    		beginTransaction();
    		rollbackTransaction();
    		return "Booking failed\n";
    	} catch (SQLException err) {
    		err.printStackTrace();
    	}
    }
    return "Booked flight(s), reservation ID: " + (reservation_count) + "\n";
  }

  /**
   * Implements the reservations function.
   *
   * @return If no user has logged in, then return "Cannot view reservations, not logged in\n"
   * If the user has no reservations, then return "No reservations found\n"
   * For all other errors, return "Failed to retrieve reservations\n"
   *
   * Otherwise return the reservations in the following format:
   *
   * Reservation [reservation ID] paid: [true or false]:\n"
   * [flight 1 under the reservation]
   * [flight 2 under the reservation]
   * Reservation [reservation ID] paid: [true or false]:\n"
   * [flight 1 under the reservation]
   * [flight 2 under the reservation]
   * ...
   *
   * Each flight should be printed using the same format as in the {@code Flight} class.
   *
   * @see Flight#toString()
   */
  public String transaction_reservations()
  {
    if(this.username == null) {return "Cannot view reservations, not logged in\n";}
    StringBuilder sb = new StringBuilder();
    try
    {
      beginTransaction();
      getReservationsStatement.clearParameters();
      getReservationsStatement.setString(1,this.username);
      ResultSet results = getReservationsStatement.executeQuery();
      if (results == null) {
        results.close();
        commitTransaction();
        return "No reservations found\n";
      }
      
      while (results.next()) {
        int rid = results.getInt("rid");
        int paid = results.getInt("paid");
        int oneId = results.getInt("flight_one_id");
        int twoId = results.getInt("flight_two_id");

        if (paid == 1) { sb.append("Reservation " + rid + " paid: true:\n");} 
        else { sb.append("Reservation " + rid + " paid: false:\n");}
        
        getFlightStatement.clearParameters();
        getFlightStatement.setInt(1, oneId);
        ResultSet flight_one_result = getFlightStatement.executeQuery();
        flight_one_result.next();
        Flight flight_one = setFlight(flight_one_result, true);
        sb.append(flight_one.toString());
        flight_one_result.close();
        if (twoId != 0) {
        getFlightStatement.clearParameters();
        getFlightStatement.setInt(1, twoId);
        ResultSet flight_two_result = getFlightStatement.executeQuery();
        flight_two_result.next();
        Flight flight_two = setFlight(flight_two_result, false);
        if(flight_two_result.next()) {sb.append(flight_two.toString());}
        flight_two_result.close();
        }
      }
      results.close();
      commitTransaction();
    } catch (SQLException e) { e.printStackTrace();}
    return sb.toString() + "\n";
  }

  /**
   * Implements the cancel operation.
   *
   * @param reservationId the reservation ID to cancel
   *
   * @return If no user has logged in, then return "Cannot cancel reservations, not logged in\n"
   * For all other errors, return "Failed to cancel reservation [reservationId]"
   *
   * If successful, return "Canceled reservation [reservationId]"
   *
   * Even though a reservation has been canceled, its ID should not be reused by the system.
   */
  public String transaction_cancel(int reservationId)
  {
    if(this.username == null) {return "Cannot cancel reservations, not logged in\n";}
    try {
    	beginTransaction();
    	getReservationWithIdStatement.clearParameters();
    	getReservationWithIdStatement.setInt(1, reservationId);
    	ResultSet result = getReservationWithIdStatement.executeQuery();
    	if (result == null) { return "Failed to cancel reservation " + reservationId + "\n";}
    	result.next();
    	int fid_one = result.getInt("flight_one_id");
    	int fid_two = result.getInt("flight_two_id");
    	String username = result.getString("username");
    	if (username == null) {return "Failed to cancel reservation " + reservationId + "\n";}
    	int cost = result.getInt("cost");
    	result.close();
    	
    	// get previous balance for user
    	getBalanceStatement.clearParameters();
    	getBalanceStatement.setString(1, username);
    	ResultSet balance = getBalanceStatement.executeQuery();
    	balance.next();
    	int prev = balance.getInt("balance");
    	balance.close();
    	
    	// add price to user's balance
    	updateBalanceStatement.clearParameters();
    	updateBalanceStatement.setInt(1,prev + cost);
    	updateBalanceStatement.setString(2, username);
    	updateBalanceStatement.executeUpdate();
    	
    	// +1 capacity for both flights
    	plusCapacityStatement.clearParameters();
    	plusCapacityStatement.setInt(1, fid_one);
    	plusCapacityStatement.setInt(2, fid_one);
    	plusCapacityStatement.executeUpdate();
    	if (fid_two!=0) {
    		plusCapacityStatement.clearParameters();
        	plusCapacityStatement.setInt(1, fid_two);
        	plusCapacityStatement.setInt(2, fid_two);
        	plusCapacityStatement.executeUpdate();
    	}
    	
    	// set username FROM RESERVATIONS to null
    	cancelReservationStatement.clearParameters();
    	cancelReservationStatement.setInt(1, reservationId);
    	cancelReservationStatement.executeUpdate();
    	commitTransaction();
    } catch (SQLException e) {e.printStackTrace();}
    return "Canceled reservation " + reservationId + "\n";
  }

  /**
   * Implements the pay function.
   *
   * @param reservationId the reservation to pay for.
   *
   * @return If no user has logged in, then return "Cannot pay, not logged in\n"
   * If the reservation is not found / not under the logged in user's name, then return
   * "Cannot find unpaid reservation [reservationId] under user: [username]\n"
   * If the user does not have enough money in their account, then return
   * "User has only [balance] in account but itinerary costs [cost]\n"
   * For all other errors, return "Failed to pay for reservation [reservationId]\n"
   *
   * If successful, return "Paid reservation: [reservationId] remaining balance: [balance]\n"
   * where [balance] is the remaining balance in the user's account.
   */
  public String transaction_pay (int reservationId)
  {
	  if(this.username == null) { return "Cannot pay, not logged in\n";}
	  try
	  {
		  beginTransaction();
		  getPaidStatement.clearParameters();
		  getPaidStatement.setInt(1,reservationId);
		  ResultSet result = getPaidStatement.executeQuery();
		  if (!result.next()) {
			  rollbackTransaction();
			  return "Cannot find unpaid reservation "+ reservationId + " under user: " + this.username +"\n";
		  }
		  int paid = result.getInt("paid");
		  if(paid == 1) {
			  result.close();
			  rollbackTransaction();
			  return "Cannot find unpaid reservation "+ reservationId + " under user: " + this.username +"\n";
		  }
		  int cost = result.getInt("cost");
		  getBalanceStatement.clearParameters();
		  getBalanceStatement.setString(1, this.username);
		  ResultSet balanceResult = getBalanceStatement.executeQuery();
		  balanceResult.next();
		  int balance = balanceResult.getInt("balance");
		  if (cost > balance) {
			  result.close();
			  balanceResult.close();
			  rollbackTransaction();
			  return "User has only "+ balance +" in account but itinerary costs "+ cost +"\n";
		  }
		  remaining = balance - cost;
		  updateBalanceStatement.clearParameters();
		  updateBalanceStatement.setInt(1, remaining);
		  updateBalanceStatement.setString(2, this.username);
		  updateBalanceStatement.executeUpdate();
		  
		  updatePaidStatement.clearParameters();
		  updatePaidStatement.setInt(1,1);
		  updatePaidStatement.setInt(2,reservationId);
		  updatePaidStatement.executeUpdate();
		  commitTransaction();
	  } catch (SQLException e) {e.printStackTrace();}	
	  return "Paid reservation: " + reservationId + " remaining balance: "+ remaining + "\n";
  }

  /* some utility functions below */

  public void beginTransaction() throws SQLException
  {
    conn.setAutoCommit(false);
    beginTransactionStatement.executeUpdate();
  }

  public void commitTransaction() throws SQLException
  {
    commitTransactionStatement.executeUpdate();
    conn.setAutoCommit(true);
  }

  public void rollbackTransaction() throws SQLException
  {
    rollbackTransactionStatement.executeUpdate();
    conn.setAutoCommit(true);
  }
}
