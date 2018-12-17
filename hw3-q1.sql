-- Seoyoung Park
-- CSE 414
-- Homework 3

SELECT F1.origin_city AS origin_city, F1.dest_city AS dest_city, F1.actual_time AS time
FROM Flights F1, Flights F2
WHERE F1.origin_city = F2.origin_city
GROUP BY F1.origin_city, F1.dest_city, F1.actual_time
HAVING F1.actual_time = MAX(F2.actual_time)
ORDER BY F1.origin_city, F1.dest_city;

/*
"Aberdeen SD","Minneapolis MN",106
"Abilene TX","Dallas/Fort Worth TX",111
"Adak Island AK","Anchorage AK",471
"Aguadilla PR","New York NY",368
"Akron OH","Atlanta GA",408
"Albany GA","Atlanta GA",243
"Albany NY","Atlanta GA",390
"Albuquerque NM","Houston TX",492
"Alexandria LA","Atlanta GA",391
"Allentown/Bethlehem/Easton PA","Atlanta GA",456
"Alpena MI","Detroit MI",80
"Amarillo TX","Houston TX",390
"Anchorage AK","Barrow AK",490
"Appleton WI","Atlanta GA",405
"Arcata/Eureka CA","San Francisco CA",476
"Asheville NC","Chicago IL",279
"Ashland WV","Cincinnati OH",84
"Aspen CO","Los Angeles CA",304
"Atlanta GA","Honolulu HI",649
"Atlantic City NJ","Fort Lauderdale FL",212
"Augusta GA","Atlanta GA",176
"Austin TX","Atlanta GA",466
"Bakersfield CA","Houston TX",315
"Baltimore MD","Orlando FL",497
"Bangor ME","Newark NJ",390
"Barrow AK","Anchorage AK",118
"Baton Rouge LA","Atlanta GA",424
"Beaumont/Port Arthur TX","Dallas/Fort Worth TX",102
"Bemidji MN","Minneapolis MN",104
"Bend/Redmond OR","Denver CO",188
"Bethel AK","Anchorage AK",95
"Billings MT","Chicago IL",180
"Binghamton NY","Cincinnati OH",132
"Birmingham AL","Atlanta GA",496
"Bismarck/Mandan ND","Dallas/Fort Worth TX",204
"Bloomington/Normal IL","Atlanta GA",417
"Boise ID","Denver CO",477
"Boston MA","Philadelphia PA",498
"Bozeman MT","Atlanta GA",402
"Brainerd MN","Minneapolis MN",96
"Bristol/Johnson City/Kingsport TN","Cincinnati OH",170
"Brownsville TX","Dallas/Fort Worth TX",311
"Brunswick GA","Atlanta GA",392
"Buffalo NY","Newark NJ",458
"Burbank CA","New York NY",465
"Burlington VT","Washington DC",488
"Butte MT","Salt Lake City UT",91
"Carlsbad CA","Los Angeles CA",60
"Casper WY","Denver CO",127
"Cedar City UT","Salt Lake City UT",78
"Cedar Rapids/Iowa City IA","Atlanta GA",422
"Champaign/Urbana IL","Dallas/Fort Worth TX",412
"Charleston SC","Newark NJ",442
"Charleston/Dunbar WV","Chicago IL",321
"Charlotte Amalie VI","New York NY",475
"Charlotte NC","Minneapolis MN",493
"Charlottesville VA","Chicago IL",381
"Chattanooga TN","Chicago IL",193
"Chicago IL","Kahului HI",641
"Chico CA","San Francisco CA",71
"Christiansted VI","Atlanta GA",438
"Cincinnati OH","Honolulu HI",584
"Cleveland OH","Fort Wayne IN",491
"Cody WY","Denver CO",221
"College Station/Bryan TX","Dallas/Fort Worth TX",132
"Colorado Springs CO","Dallas/Fort Worth TX",434
"Columbia MO","Dallas/Fort Worth TX",129
"Columbia SC","Atlanta GA",260
"Columbus GA","Atlanta GA",94
"Columbus MS","Atlanta GA",169
"Columbus OH","Philadelphia PA",490
"Cordova AK","Anchorage AK",63
"Cordova AK","Yakutat AK",63
"Corpus Christi TX","Dallas/Fort Worth TX",486
"Crescent City CA","Sacramento CA",318
"Dallas TX","Kansas City MO",497
"Dallas/Fort Worth TX","Honolulu HI",561
"Dayton OH","Atlanta GA",408
"Daytona Beach FL","Newark NJ",337
"Deadhorse AK","Barrow AK",472
"Denver CO","Cincinnati OH",495
"Denver CO","New York NY",495
"Des Moines IA","Chicago IL",466
"Detroit MI","Atlanta GA",497
"Devils Lake ND","Denver CO",132
"Dickinson ND","Minneapolis MN",136
"Dillingham AK","Anchorage AK",84
"Dothan AL","Atlanta GA",160
"Dubuque IA","Chicago IL",164
"Duluth MN","Chicago IL",138
"Durango CO","Dallas/Fort Worth TX",148
"Eagle CO","Chicago IL",483
"Eau Claire WI","Chicago IL",129
"El Centro CA","Palm Springs CA",459
"El Paso TX","Houston TX",397
"Elko NV","Salt Lake City UT",143
"Elmira/Corning NY","Detroit MI",249
"Erie PA","Chicago IL",126
"Escanaba MI","Detroit MI",93
"Eugene OR","Los Angeles CA",328
"Evansville IN","Atlanta GA",335
"Fairbanks AK","Chicago IL",376
"Fargo ND","Dallas/Fort Worth TX",187
"Fayetteville AR","Houston TX",468
"Fayetteville NC","Atlanta GA",142
"Flagstaff AZ","Phoenix AZ",97
"Flint MI","Detroit MI",471
"Florence SC","Atlanta GA",140
"Fort Lauderdale FL","Chicago IL",470
"Fort Myers FL","Atlanta GA",497
"Fort Smith AR","Atlanta GA",457
"Fort Wayne IN","Atlanta GA",464
"Fresno CA","Palm Springs CA",490
"Gainesville FL","Atlanta GA",135
"Garden City KS","Dallas/Fort Worth TX",118
"Gillette WY","Denver CO",107
"Grand Forks ND","Minneapolis MN",94
"Grand Island NE","Dallas/Fort Worth TX",142
"Grand Junction CO","Houston TX",195
"Grand Rapids MI","Orlando FL",496
"Great Falls MT","Minneapolis MN",176
"Green Bay WI","Dallas/Fort Worth TX",172
"Greensboro/High Point NC","Cincinnati OH",463
"Greer SC","Newark NJ",341
"Guam TT","Honolulu HI",461
"Gulfport/Biloxi MS","Atlanta GA",393
"Gunnison CO","Houston TX",149
"Gustavus AK","Juneau AK",50
"Hancock/Houghton MI","Chicago IL",256
"Harlingen/San Benito TX","Houston TX",387
"Harrisburg PA","Chicago IL",460
"Hartford CT","Atlanta GA",499
"Hattiesburg/Laurel MS","Dallas/Fort Worth TX",119
"Hayden CO","Houston TX",471
"Hays KS","Denver CO",141
"Helena MT","Minneapolis MN",150
"Hibbing MN","Minneapolis MN",88
"Hickory NC","Atlanta GA",108
"Hilo HI","Los Angeles CA",324
"Hobbs NM","Houston TX",124
"Honolulu HI","New York NY",654
"Houston TX","Honolulu HI",562
"Huntsville AL","Dallas/Fort Worth TX",486
"Hyannis MA","New York NY",79
"Idaho Falls ID","Denver CO",157
"Indianapolis IN","Seattle WA",474
"International Falls MN","Hibbing MN",204
"Inyokern CA","Los Angeles CA",62
"Iron Mountain/Kingsfd MI","Minneapolis MN",94
"Islip NY","Orlando FL",499
"Jackson WY","Denver CO",475
"Jackson/Vicksburg MS","Washington DC",290
"Jacksonville FL","Charlotte NC",476
"Jacksonville/Camp Lejeune NC","Atlanta GA",189
"Jamestown ND","Denver CO",125
"Joplin MO","Dallas/Fort Worth TX",115
"Juneau AK","Seattle WA",224
"Kahului HI","Chicago IL",500
"Kalamazoo MI","Chicago IL",117
"Kalispell MT","Pocatello ID",376
"Kansas City MO","Dallas/Fort Worth TX",494
"Ketchikan AK","Seattle WA",143
"Key West FL","Atlanta GA",479
"Killeen TX","Dallas/Fort Worth TX",418
"King Salmon AK","Adak Island AK",156
"Kinston NC","Atlanta GA",201
"Knoxville TN","Newark NJ",451
"Kodiak AK","Anchorage AK",76
"Kona HI","Chicago IL",496
"Kotzebue AK","Nome AK",314
"La Crosse WI","Minneapolis MN",134
"Lafayette LA","Atlanta GA",229
"Lake Charles LA","Houston TX",370
"Lansing MI","Minneapolis MN",143
"Laramie WY","Denver CO",92
"Laredo TX","Houston TX",412
"Las Vegas NV","Detroit MI",499
"Latrobe PA","Las Vegas NV",301
"Lawton/Fort Sill OK","Dallas/Fort Worth TX",128
"Lewisburg WV","Atlanta GA",297
"Lewiston ID","Salt Lake City UT",104
"Lexington KY","Dallas/Fort Worth TX",452
"Lihue HI","Los Angeles CA",412
"Lincoln NE","Chicago IL",272
"Little Rock AR","Houston TX",460
"Long Beach CA","New York NY",460
"Longview TX","Dallas/Fort Worth TX",183
"Los Angeles CA","Atlanta GA",491
"Louisville KY","Birmingham AL",495
"Lubbock TX","Dallas TX",481
"Lynchburg VA","Atlanta GA",105
"Macon GA","Atlanta GA",74
"Madison WI","Dallas/Fort Worth TX",436
"Manchester NH","Chicago IL",483
"Manhattan/Ft. Riley KS","Chicago IL",172
"Marquette MI","Chicago IL",120
"Marthas Vineyard MA","New York NY",83
"Medford OR","Grand Junction CO",272
"Melbourne FL","New York NY",335
"Memphis TN","Houston TX",492
"Meridian MS","Dallas/Fort Worth TX",114
"Miami FL","Newark NJ",499
"Miami FL","Philadelphia PA",499
"Midland/Odessa TX","Dallas TX",294
"Milwaukee WI","Houston TX",397
"Milwaukee WI","Minneapolis MN",397
"Minneapolis MN","Honolulu HI",532
"Minot ND","Denver CO",184
"Mission/McAllen/Edinburg TX","Dallas/Fort Worth TX",388
"Missoula MT","Atlanta GA",259
"Mobile AL","Houston TX",281
"Modesto CA","San Francisco CA",64
"Moline IL","Atlanta GA",337
"Monroe LA","Atlanta GA",321
"Monterey CA","Fresno CA",459
"Montgomery AL","Dallas/Fort Worth TX",351
"Montrose/Delta CO","Houston TX",489
"Mosinee WI","Chicago IL",90
"Muskegon MI","Chicago IL",104
"Myrtle Beach SC","Detroit MI",383
"Nantucket MA","Newark NJ",305
"Naples FL","Atlanta GA",170
"Nashville TN","Phoenix AZ",445
"New Bern/Morehead/Beaufort NC","Atlanta GA",116
"New Haven CT","Cincinnati OH",157
"New Orleans LA","Charlotte NC",489
"New York NY","Honolulu HI",696
"Newark NJ","Honolulu HI",691
"Newburgh/Poughkeepsie NY","Chicago IL",228
"Newport News/Williamsburg VA","Atlanta GA",290
"Niagara Falls NY","Fort Lauderdale FL",168
"Nome AK","Kotzebue AK",492
"Norfolk VA","Cincinnati OH",761
"North Bend/Coos Bay OR","Denver CO",177
"Oakland CA","Denver CO",496
"Oklahoma City OK","Houston TX",485
"Omaha NE","Newark NJ",442
"Ontario CA","Atlanta GA",479
"Orlando FL","New York NY",484
"Oxnard/Ventura CA","Los Angeles CA",62
"Paducah KY","Chicago IL",135
"Pago Pago TT","Honolulu HI",336
"Palm Springs CA","Dallas/Fort Worth TX",441
"Panama City FL","Atlanta GA",372
"Pasco/Kennewick/Richland WA","Denver CO",424
"Pellston MI","Detroit MI",95
"Pensacola FL","Atlanta GA",476
"Peoria IL","Dallas/Fort Worth TX",471
"Petersburg AK","Juneau AK",52
"Philadelphia PA","Seattle WA",540
"Phoenix AZ","Honolulu HI",495
"Phoenix AZ","Little Rock AR",495
"Pittsburgh PA","Atlanta GA",478
"Plattsburgh NY","Fort Lauderdale FL",198
"Pocatello ID","Salt Lake City UT",94
"Ponce PR","New York NY",268
"Portland ME","Atlanta GA",429
"Portland OR","Chicago IL",470
"Providence RI","Tampa FL",487
"Raleigh/Durham NC","Atlanta GA",491
"Rapid City SD","Minneapolis MN",433
"Redding CA","San Francisco CA",99
"Reno NV","Houston TX",456
"Rhinelander WI","Iron Mountain/Kingsfd MI",390
"Richmond VA","Chicago IL",472
"Roanoke VA","Chicago IL",171
"Rochester MN","Dallas/Fort Worth TX",292
"Rochester NY","Atlanta GA",486
"Rock Springs WY","Denver CO",284
"Roswell NM","Dallas/Fort Worth TX",112
"Sacramento CA","Phoenix AZ",479
"Saginaw/Bay City/Midland MI","Chicago IL",238
"Salt Lake City UT","Washington DC",498
"San Angelo TX","Dallas/Fort Worth TX",180
"San Antonio TX","Orlando FL",493
"San Diego CA","Washington DC",497
"San Francisco CA","Atlanta GA",489
"San Jose CA","Chicago IL",486
"San Jose CA","Las Vegas NV",486
"San Juan PR","Hartford CT",464
"San Luis Obispo CA","Los Angeles CA",149
"Santa Ana CA","Houston TX",491
"Santa Barbara CA","Dallas/Fort Worth TX",246
"Santa Fe NM","Los Angeles CA",303
"Santa Maria CA","San Francisco CA",108
"Sarasota/Bradenton FL","New York NY",472
"Sault Ste. Marie MI","Detroit MI",107
"Savannah GA","Chicago IL",483
"Scranton/Wilkes-Barre PA","Cincinnati OH",326
"Seattle WA","Houston TX",477
"Shreveport LA","Atlanta GA",465
"Sioux City IA","Chicago IL",123
"Sioux Falls SD","Denver CO",474
"Sitka AK","Juneau AK",452
"South Bend IN","Atlanta GA",177
"Spokane WA","Las Vegas NV",485
"Springfield IL","Dallas/Fort Worth TX",160
"Springfield MO","Atlanta GA",366
"St. Augustine FL","Trenton NJ",183
"St. George UT","Denver CO",147
"St. Louis MO","Kansas City MO",487
"State College PA","Chicago IL",189
"Sun Valley/Hailey/Ketchum ID","Denver CO",155
"Syracuse NY","Cleveland OH",498
"Tallahassee FL","Atlanta GA",374
"Tampa FL","Atlanta GA",497
"Texarkana AR","Dallas/Fort Worth TX",168
"Toledo OH","Dallas/Fort Worth TX",448
"Traverse City MI","Detroit MI",462
"Trenton NJ","Minneapolis MN",236
"Tucson AZ","Atlanta GA",434
"Tulsa OK","Houston TX",438
"Tupelo MS","Atlanta GA",105
"Twin Falls ID","Salt Lake City UT",66
"Tyler TX","Dallas/Fort Worth TX",181
"Valdosta GA","Atlanta GA",141
"Valparaiso FL","Atlanta GA",491
"Victoria TX","Houston TX",56
"Visalia CA","Fresno CA",31
"Waco TX","Dallas/Fort Worth TX",144
"Washington DC","Honolulu HI",656
"Waterloo IA","Chicago IL",83
"West Palm Beach/Palm Beach FL","Dallas/Fort Worth TX",493
"West Yellowstone MT","Salt Lake City UT",115
"White Plains NY","Atlanta GA",455
"Wichita Falls TX","Dallas/Fort Worth TX",143
"Wichita KS","Houston TX",487
"Williston ND","Houston TX",469
"Wilmington NC","Atlanta GA",181
"Worcester MA","Fort Lauderdale FL",245
"Wrangell AK","Ketchikan AK",51
"Wrangell AK","Petersburg AK",51
"Yakutat AK","Juneau AK",68
"Yuma AZ","Phoenix AZ",93
 */