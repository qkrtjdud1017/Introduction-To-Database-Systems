-- Seoyoung Park
-- CSE 414
-- Homework 3

SELECT F1.origin_city AS origin_city, X.num*100/count(F1.fid) AS percentage
FROM Flights F1 LEFT OUTER JOIN
    (SELECT F2.origin_city, count(*) AS num
     FROM Flights F2
     WHERE F2.actual_time < 3*60
     GROUP BY F2.origin_city) X
     ON F1.origin_city = X.origin_city
GROUP BY F1.origin_city, X.num
ORDER BY X.num*100/count(F1.fid);

/*
"Guam TT",
"Pago Pago TT",
"Aguadilla PR",29
"Anchorage AK",32
"San Juan PR",33
"Charlotte Amalie VI",40
"Ponce PR",41
"Fairbanks AK",50
"Kahului HI",53
"Honolulu HI",54
"Los Angeles CA",56
"San Francisco CA",56
"Seattle WA",57
"Long Beach CA",62
"Kona HI",63
"New York NY",63
"Christiansted VI",65
"Las Vegas NV",65
"Newark NJ",67
"Worcester MA",67
"Philadelphia PA",68
"Plattsburgh NY",68
"Portland OR",68
"San Diego CA",68
"Boston MA",69
"Lihue HI",69
"Phoenix AZ",70
"Miami FL",71
"Fort Lauderdale FL",76
"Minneapolis MN",76
"Santa Ana CA",77
"Houston TX",78
"Latrobe PA",78
"Washington DC",78
"Chicago IL",79
"San Jose CA",80
"Baltimore MD",81
"Dallas/Fort Worth TX",81
"Oakland CA",81
"Sacramento CA",81
"Bakersfield CA",82
"Austin TX",83
"Denver CO",84
"Detroit MI",84
"Salt Lake City UT",84
"St. Louis MO",84
"Tucson AZ",84
"Milwaukee WI",85
"Orlando FL",85
"Pittsburgh PA",85
"Charlotte NC",86
"Fort Myers FL",86
"Indianapolis IN",86
"New Orleans LA",86
"Cleveland OH",87
"Hartford CT",87
"Reno NV",87
"Williston ND",87
"Adak Island AK",88
"Atlanta GA",88
"Ontario CA",88
"Tampa FL",88
"Boise ID",89
"Columbus OH",89
"Kansas City MO",89
"Nashville TN",89
"Norfolk VA",89
"San Antonio TX",89
"Albuquerque NM",90
"West Palm Beach/Palm Beach FL",90
"Dallas TX",91
"Manchester NH",91
"Raleigh/Durham NC",91
"Cincinnati OH",92
"Kalispell MT",92
"Providence RI",92
"St. Augustine FL",92
"Burbank CA",93
"Fresno CA",93
"Jackson WY",93
"Memphis TN",93
"White Plains NY",93
"Buffalo NY",94
"El Paso TX",94
"Fayetteville AR",94
"Islip NY",94
"Lewisburg WV",94
"Louisville KY",94
"Newburgh/Poughkeepsie NY",94
"Oklahoma City OK",94
"Richmond VA",94
"Akron OH",95
"Albany NY",95
"Bozeman MT",95
"Crescent City CA",95
"Deadhorse AK",95
"Birmingham AL",96
"El Centro CA",96
"Flint MI",96
"Hayden CO",96
"Hilo HI",96
"Jacksonville FL",96
"Little Rock AR",96
"Omaha NE",96
"Portland ME",96
"Spokane WA",96
"Aspen CO",97
"Colorado Springs CO",97
"Daytona Beach FL",97
"Eagle CO",97
"Greensboro/High Point NC",97
"Palm Springs CA",97
"Sarasota/Bradenton FL",97
"Trenton NJ",97
"Allentown/Bethlehem/Easton PA",98
"Charleston SC",98
"Charleston/Dunbar WV",98
"Dayton OH",98
"Des Moines IA",98
"Grand Rapids MI",98
"Hancock/Houghton MI",98
"Huntsville AL",98
"International Falls MN",98
"Key West FL",98
"Kinston NC",98
"Knoxville TN",98
"Kotzebue AK",98
"Madison WI",98
"Missoula MT",98
"Moline IL",98
"Montrose/Delta CO",98
"Nome AK",98
"Pasco/Kennewick/Richland WA",98
"Rhinelander WI",98
"Rock Springs WY",98
"Santa Barbara CA",98
"Savannah GA",98
"Scranton/Wilkes-Barre PA",98
"Tulsa OK",98
"Albany GA",99
"Alexandria LA",99
"Amarillo TX",99
"Appleton WI",99
"Arcata/Eureka CA",99
"Asheville NC",99
"Atlantic City NJ",99
"Bangor ME",99
"Baton Rouge LA",99
"Bend/Redmond OR",99
"Billings MT",99
"Bismarck/Mandan ND",99
"Bloomington/Normal IL",99
"Brownsville TX",99
"Brunswick GA",99
"Burlington VT",99
"Cedar Rapids/Iowa City IA",99
"Champaign/Urbana IL",99
"Charlottesville VA",99
"Chattanooga TN",99
"Cody WY",99
"Columbia SC",99
"Corpus Christi TX",99
"Elmira/Corning NY",99
"Eugene OR",99
"Evansville IN",99
"Fargo ND",99
"Fort Smith AR",99
"Fort Wayne IN",99
"Grand Junction CO",99
"Greer SC",99
"Gulfport/Biloxi MS",99
"Harlingen/San Benito TX",99
"Harrisburg PA",99
"Jackson/Vicksburg MS",99
"Jacksonville/Camp Lejeune NC",99
"Juneau AK",99
"Killeen TX",99
"Lafayette LA",99
"Lake Charles LA",99
"Laredo TX",99
"Lexington KY",99
"Lincoln NE",99
"Longview TX",99
"Lubbock TX",99
"Medford OR",99
"Melbourne FL",99
"Midland/Odessa TX",99
"Minot ND",99
"Mission/McAllen/Edinburg TX",99
"Mobile AL",99
"Monroe LA",99
"Monterey CA",99
"Montgomery AL",99
"Myrtle Beach SC",99
"Nantucket MA",99
"Newport News/Williamsburg VA",99
"Panama City FL",99
"Pensacola FL",99
"Peoria IL",99
"Rapid City SD",99
"Rochester MN",99
"Rochester NY",99
"Saginaw/Bay City/Midland MI",99
"San Angelo TX",99
"Santa Fe NM",99
"Shreveport LA",99
"Sioux Falls SD",99
"Sitka AK",99
"Springfield MO",99
"State College PA",99
"Syracuse NY",99
"Tallahassee FL",99
"Toledo OH",99
"Traverse City MI",99
"Tyler TX",99
"Valparaiso FL",99
"Wichita KS",99
"Wilmington NC",99
"Aberdeen SD",100
"Abilene TX",100
"Alpena MI",100
"Ashland WV",100
"Augusta GA",100
"Barrow AK",100
"Beaumont/Port Arthur TX",100
"Bemidji MN",100
"Bethel AK",100
"Binghamton NY",100
"Brainerd MN",100
"Bristol/Johnson City/Kingsport TN",100
"Butte MT",100
"Carlsbad CA",100
"Casper WY",100
"Cedar City UT",100
"Chico CA",100
"College Station/Bryan TX",100
"Columbia MO",100
"Columbus GA",100
"Columbus MS",100
"Cordova AK",100
"Devils Lake ND",100
"Dickinson ND",100
"Dillingham AK",100
"Dothan AL",100
"Dubuque IA",100
"Duluth MN",100
"Durango CO",100
"Eau Claire WI",100
"Elko NV",100
"Erie PA",100
"Escanaba MI",100
"Fayetteville NC",100
"Flagstaff AZ",100
"Florence SC",100
"Gainesville FL",100
"Garden City KS",100
"Gillette WY",100
"Grand Forks ND",100
"Grand Island NE",100
"Great Falls MT",100
"Green Bay WI",100
"Gunnison CO",100
"Gustavus AK",100
"Hattiesburg/Laurel MS",100
"Hays KS",100
"Helena MT",100
"Hibbing MN",100
"Hickory NC",100
"Hobbs NM",100
"Hyannis MA",100
"Idaho Falls ID",100
"Inyokern CA",100
"Iron Mountain/Kingsfd MI",100
"Jamestown ND",100
"Joplin MO",100
"Kalamazoo MI",100
"Ketchikan AK",100
"King Salmon AK",100
"Kodiak AK",100
"La Crosse WI",100
"Lansing MI",100
"Laramie WY",100
"Lawton/Fort Sill OK",100
"Lewiston ID",100
"Lynchburg VA",100
"Macon GA",100
"Manhattan/Ft. Riley KS",100
"Marquette MI",100
"Marthas Vineyard MA",100
"Meridian MS",100
"Modesto CA",100
"Mosinee WI",100
"Muskegon MI",100
"Naples FL",100
"New Bern/Morehead/Beaufort NC",100
"New Haven CT",100
"Niagara Falls NY",100
"North Bend/Coos Bay OR",100
"Oxnard/Ventura CA",100
"Paducah KY",100
"Pellston MI",100
"Petersburg AK",100
"Pocatello ID",100
"Redding CA",100
"Roanoke VA",100
"Roswell NM",100
"San Luis Obispo CA",100
"Santa Maria CA",100
"Sault Ste. Marie MI",100
"Sioux City IA",100
"South Bend IN",100
"Springfield IL",100
"St. George UT",100
"Sun Valley/Hailey/Ketchum ID",100
"Texarkana AR",100
"Tupelo MS",100
"Twin Falls ID",100
"Valdosta GA",100
"Victoria TX",100
"Visalia CA",100
"Waco TX",100
"Waterloo IA",100
"West Yellowstone MT",100
"Wichita Falls TX",100
"Wrangell AK",100
"Yakutat AK",100
"Yuma AZ",100
 */