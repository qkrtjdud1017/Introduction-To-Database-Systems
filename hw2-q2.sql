SELECT C.name, F1.flight_num AS f1_flight_num, 
	F1.origin_city AS f1_origin_city,F1.dest_city AS f1_dest_city, 
	F1.actual_time AS f1_actual_time, F2.flight_num AS f2_flight_num,
	F2.origin_city AS f2_origin_city, F2.dest_city AS f2_dest_city, 
	F2.actual_time AS f2_actual_time, 
	F1.actual_time + F2.actual_time AS actual_time
FROM Flights AS F1 JOIN Flights AS F2 
	ON F1.month_id = F2.month_id
	AND F1.day_of_month = F2.day_of_month
	AND F1.carrier_id = F2.carrier_id
	AND F1.dest_city = F2.origin_city
JOIN Carriers AS C ON C.cid = F1.carrier_id
JOIN Months AS M ON M.mid = F1.month_id
WHERE F1.origin_city = 'Seattle WA'
	AND F2.dest_city = 'Boston MA'
	AND M.month = 'July'
	AND F1.day_of_month = 15
	AND F1.actual_time + F2.actual_time < 7 * 60;

/*
American Airlines Inc.",198,"Seattle WA","New York NY",339,84,"New York NY","Boston MA",74,413
"American Airlines Inc.",198,"Seattle WA","New York NY",339,199,"New York NY","Boston MA",80,419
"American Airlines Inc.",198,"Seattle WA","New York NY",339,1443,"New York NY","Boston MA",80,419
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2118,"New York NY","Boston MA",0,339
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2121,"New York NY","Boston MA",74,413
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2122,"New York NY","Boston MA",65,404
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2126,"New York NY","Boston MA",60,399
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2131,"New York NY","Boston MA",70,409
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2136,"New York NY","Boston MA",63,402
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2141,"New York NY","Boston MA",57,396
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2146,"New York NY","Boston MA",60,399
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2152,"New York NY","Boston MA",69,408
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2156,"New York NY","Boston MA",79,418
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2158,"New York NY","Boston MA",67,406
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2162,"New York NY","Boston MA",0,339
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2168,"New York NY","Boston MA",54,393
"American Airlines Inc.",198,"Seattle WA","New York NY",339,2172,"New York NY","Boston MA",80,419
"American Airlines Inc.",260,"Seattle WA","New York NY",302,84,"New York NY","Boston MA",74,376
"American Airlines Inc.",260,"Seattle WA","New York NY",302,199,"New York NY","Boston MA",80,382
"American Airlines Inc.",260,"Seattle WA","New York NY",302,235,"New York NY","Boston MA",91,393
"American Airlines Inc.",260,"Seattle WA","New York NY",302,1443,"New York NY","Boston MA",80,382
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2118,"New York NY","Boston MA",0,302
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2121,"New York NY","Boston MA",74,376
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2122,"New York NY","Boston MA",65,367
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2126,"New York NY","Boston MA",60,362
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2128,"New York NY","Boston MA",83,385
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2131,"New York NY","Boston MA",70,372
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2136,"New York NY","Boston MA",63,365
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2141,"New York NY","Boston MA",57,359
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2146,"New York NY","Boston MA",60,362
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2151,"New York NY","Boston MA",81,383
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2152,"New York NY","Boston MA",69,371
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2156,"New York NY","Boston MA",79,381
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2158,"New York NY","Boston MA",67,369
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2162,"New York NY","Boston MA",0,302
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2168,"New York NY","Boston MA",54,356
"American Airlines Inc.",260,"Seattle WA","New York NY",302,2172,"New York NY","Boston MA",80,382
"American Airlines Inc.",456,"Seattle WA","St. Louis MO",230,456,"St. Louis MO","Boston MA",161,391
"American Airlines Inc.",456,"Seattle WA","St. Louis MO",230,2240,"St. Louis MO","Boston MA",151,381
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,26,"Chicago IL","Boston MA",150,380
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,186,"Chicago IL","Boston MA",137,367
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,288,"Chicago IL","Boston MA",137,367
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,366,"Chicago IL","Boston MA",150,380
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,542,"Chicago IL","Boston MA",136,366
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,818,"Chicago IL","Boston MA",133,363
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,868,"Chicago IL","Boston MA",177,407
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,876,"Chicago IL","Boston MA",135,365
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1205,"Chicago IL","Boston MA",128,358
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1240,"Chicago IL","Boston MA",130,360
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1299,"Chicago IL","Boston MA",133,363
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1400,"Chicago IL","Boston MA",143,373
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1435,"Chicago IL","Boston MA",133,363
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1557,"Chicago IL","Boston MA",122,352
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,1718,"Chicago IL","Boston MA",140,370
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,2018,"Chicago IL","Boston MA",138,368
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,2276,"Chicago IL","Boston MA",134,364
"American Airlines Inc.",526,"Seattle WA","Chicago IL",230,2503,"Chicago IL","Boston MA",127,357
"American Airlines Inc.",852,"Seattle WA","St. Louis MO",220,456,"St. Louis MO","Boston MA",161,381
"American Airlines Inc.",852,"Seattle WA","St. Louis MO",220,2240,"St. Louis MO","Boston MA",151,371
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,26,"Chicago IL","Boston MA",150,382
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,186,"Chicago IL","Boston MA",137,369
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,288,"Chicago IL","Boston MA",137,369
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,366,"Chicago IL","Boston MA",150,382
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,542,"Chicago IL","Boston MA",136,368
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,818,"Chicago IL","Boston MA",133,365
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,868,"Chicago IL","Boston MA",177,409
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,876,"Chicago IL","Boston MA",135,367
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1205,"Chicago IL","Boston MA",128,360
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1240,"Chicago IL","Boston MA",130,362
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1299,"Chicago IL","Boston MA",133,365
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1400,"Chicago IL","Boston MA",143,375
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1435,"Chicago IL","Boston MA",133,365
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1557,"Chicago IL","Boston MA",122,354
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,1718,"Chicago IL","Boston MA",140,372
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,2018,"Chicago IL","Boston MA",138,370
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,2276,"Chicago IL","Boston MA",134,366
"American Airlines Inc.",868,"Seattle WA","Chicago IL",232,2503,"Chicago IL","Boston MA",127,359
"American Airlines Inc.",1212,"Seattle WA","Dallas/Fort Worth TX",204,2056,"Dallas/Fort Worth TX","Boston MA",206,410
"American Airlines Inc.",1212,"Seattle WA","Dallas/Fort Worth TX",204,2328,"Dallas/Fort Worth TX","Boston MA",212,416
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,26,"Chicago IL","Boston MA",150,373
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,186,"Chicago IL","Boston MA",137,360
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,288,"Chicago IL","Boston MA",137,360
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,366,"Chicago IL","Boston MA",150,373
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,542,"Chicago IL","Boston MA",136,359
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,636,"Chicago IL","Boston MA",192,415
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,818,"Chicago IL","Boston MA",133,356
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,868,"Chicago IL","Boston MA",177,400
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,876,"Chicago IL","Boston MA",135,358
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1205,"Chicago IL","Boston MA",128,351
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1240,"Chicago IL","Boston MA",130,353
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1299,"Chicago IL","Boston MA",133,356
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1400,"Chicago IL","Boston MA",143,366
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1435,"Chicago IL","Boston MA",133,356
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1557,"Chicago IL","Boston MA",122,345
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,1718,"Chicago IL","Boston MA",140,363
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,2018,"Chicago IL","Boston MA",138,361
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,2276,"Chicago IL","Boston MA",134,357
"American Airlines Inc.",1460,"Seattle WA","Chicago IL",223,2503,"Chicago IL","Boston MA",127,350
"American Airlines Inc.",1498,"Seattle WA","St. Louis MO",214,456,"St. Louis MO","Boston MA",161,375
"American Airlines Inc.",1498,"Seattle WA","St. Louis MO",214,2240,"St. Louis MO","Boston MA",151,365
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,26,"Chicago IL","Boston MA",150,377
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,186,"Chicago IL","Boston MA",137,364
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,288,"Chicago IL","Boston MA",137,364
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,366,"Chicago IL","Boston MA",150,377
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,542,"Chicago IL","Boston MA",136,363
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,636,"Chicago IL","Boston MA",192,419
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,818,"Chicago IL","Boston MA",133,360
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,868,"Chicago IL","Boston MA",177,404
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,876,"Chicago IL","Boston MA",135,362
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1205,"Chicago IL","Boston MA",128,355
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1240,"Chicago IL","Boston MA",130,357
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1299,"Chicago IL","Boston MA",133,360
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1400,"Chicago IL","Boston MA",143,370
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1435,"Chicago IL","Boston MA",133,360
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1557,"Chicago IL","Boston MA",122,349
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,1718,"Chicago IL","Boston MA",140,367
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,2018,"Chicago IL","Boston MA",138,365
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,2276,"Chicago IL","Boston MA",134,361
"American Airlines Inc.",1734,"Seattle WA","Chicago IL",227,2503,"Chicago IL","Boston MA",127,354
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,26,"Chicago IL","Boston MA",150,411
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,186,"Chicago IL","Boston MA",137,398
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,288,"Chicago IL","Boston MA",137,398
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,366,"Chicago IL","Boston MA",150,411
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,542,"Chicago IL","Boston MA",136,397
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,818,"Chicago IL","Boston MA",133,394
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,876,"Chicago IL","Boston MA",135,396
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1205,"Chicago IL","Boston MA",128,389
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1240,"Chicago IL","Boston MA",130,391
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1299,"Chicago IL","Boston MA",133,394
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1400,"Chicago IL","Boston MA",143,404
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1435,"Chicago IL","Boston MA",133,394
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1557,"Chicago IL","Boston MA",122,383
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,1718,"Chicago IL","Boston MA",140,401
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,2018,"Chicago IL","Boston MA",138,399
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,2276,"Chicago IL","Boston MA",134,395
"American Airlines Inc.",2041,"Seattle WA","Chicago IL",261,2503,"Chicago IL","Boston MA",127,388
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,26,"Chicago IL","Boston MA",150,371
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,186,"Chicago IL","Boston MA",137,358
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,288,"Chicago IL","Boston MA",137,358
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,366,"Chicago IL","Boston MA",150,371
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,542,"Chicago IL","Boston MA",136,357
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,636,"Chicago IL","Boston MA",192,413
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,818,"Chicago IL","Boston MA",133,354
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,868,"Chicago IL","Boston MA",177,398
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,876,"Chicago IL","Boston MA",135,356
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1205,"Chicago IL","Boston MA",128,349
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1240,"Chicago IL","Boston MA",130,351
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1299,"Chicago IL","Boston MA",133,354
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1400,"Chicago IL","Boston MA",143,364
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1435,"Chicago IL","Boston MA",133,354
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1557,"Chicago IL","Boston MA",122,343
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,1718,"Chicago IL","Boston MA",140,361
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,2018,"Chicago IL","Boston MA",138,359
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,2276,"Chicago IL","Boston MA",134,355
"American Airlines Inc.",2333,"Seattle WA","Chicago IL",221,2503,"Chicago IL","Boston MA",127,348
"JetBlue Airways",176,"Seattle WA","New York NY",331,118,"New York NY","Boston MA",0,331
"JetBlue Airways",176,"Seattle WA","New York NY",331,318,"New York NY","Boston MA",69,400
"JetBlue Airways",176,"Seattle WA","New York NY",331,618,"New York NY","Boston MA",63,394
"JetBlue Airways",176,"Seattle WA","New York NY",331,718,"New York NY","Boston MA",58,389
"JetBlue Airways",176,"Seattle WA","New York NY",331,918,"New York NY","Boston MA",86,417
"JetBlue Airways",86,"Seattle WA","New York NY",303,118,"New York NY","Boston MA",0,303
"JetBlue Airways",86,"Seattle WA","New York NY",303,318,"New York NY","Boston MA",69,372
"JetBlue Airways",86,"Seattle WA","New York NY",303,418,"New York NY","Boston MA",105,408
"JetBlue Airways",86,"Seattle WA","New York NY",303,518,"New York NY","Boston MA",104,407
"JetBlue Airways",86,"Seattle WA","New York NY",303,618,"New York NY","Boston MA",63,366
"JetBlue Airways",86,"Seattle WA","New York NY",303,718,"New York NY","Boston MA",58,361
"JetBlue Airways",86,"Seattle WA","New York NY",303,918,"New York NY","Boston MA",86,389
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,8,"Newark NJ","Boston MA",64,357
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,21,"Newark NJ","Boston MA",82,375
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,836,"Newark NJ","Boston MA",100,393
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,840,"Newark NJ","Boston MA",65,358
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,842,"Newark NJ","Boston MA",93,386
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,844,"Newark NJ","Boston MA",72,365
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,846,"Newark NJ","Boston MA",69,362
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,850,"Newark NJ","Boston MA",63,356
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,856,"Newark NJ","Boston MA",66,359
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,858,"Newark NJ","Boston MA",71,364
"Continental Air Lines Inc.",234,"Seattle WA","Newark NJ",293,862,"Newark NJ","Boston MA",70,363
"Continental Air Lines Inc.",274,"Seattle WA","Cleveland OH",249,130,"Cleveland OH","Boston MA",115,364
"Continental Air Lines Inc.",274,"Seattle WA","Cleveland OH",249,230,"Cleveland OH","Boston MA",117,366
"Continental Air Lines Inc.",274,"Seattle WA","Cleveland OH",249,1030,"Cleveland OH","Boston MA",109,358
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,8,"Newark NJ","Boston MA",64,371
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,21,"Newark NJ","Boston MA",82,389
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,836,"Newark NJ","Boston MA",100,407
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,840,"Newark NJ","Boston MA",65,372
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,842,"Newark NJ","Boston MA",93,400
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,844,"Newark NJ","Boston MA",72,379
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,846,"Newark NJ","Boston MA",69,376
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,850,"Newark NJ","Boston MA",63,370
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,856,"Newark NJ","Boston MA",66,373
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,858,"Newark NJ","Boston MA",71,378
"Continental Air Lines Inc.",1580,"Seattle WA","Newark NJ",307,862,"Newark NJ","Boston MA",70,377
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,8,"Newark NJ","Boston MA",64,372
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,21,"Newark NJ","Boston MA",82,390
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,836,"Newark NJ","Boston MA",100,408
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,840,"Newark NJ","Boston MA",65,373
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,842,"Newark NJ","Boston MA",93,401
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,844,"Newark NJ","Boston MA",72,380
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,846,"Newark NJ","Boston MA",69,377
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,850,"Newark NJ","Boston MA",63,371
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,856,"Newark NJ","Boston MA",66,374
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,858,"Newark NJ","Boston MA",71,379
"Continental Air Lines Inc.",1680,"Seattle WA","Newark NJ",308,862,"Newark NJ","Boston MA",70,378
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,8,"Newark NJ","Boston MA",64,366
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,21,"Newark NJ","Boston MA",82,384
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,836,"Newark NJ","Boston MA",100,402
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,840,"Newark NJ","Boston MA",65,367
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,842,"Newark NJ","Boston MA",93,395
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,844,"Newark NJ","Boston MA",72,374
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,846,"Newark NJ","Boston MA",69,371
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,850,"Newark NJ","Boston MA",63,365
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,856,"Newark NJ","Boston MA",66,368
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,858,"Newark NJ","Boston MA",71,373
"Continental Air Lines Inc.",1880,"Seattle WA","Newark NJ",302,862,"Newark NJ","Boston MA",70,372
"Independence Air",68,"Seattle WA","Washington DC",296,138,"Washington DC","Boston MA",85,381
"Independence Air",68,"Seattle WA","Washington DC",296,1115,"Washington DC","Boston MA",86,382
"Independence Air",68,"Seattle WA","Washington DC",296,1117,"Washington DC","Boston MA",96,392
"Independence Air",68,"Seattle WA","Washington DC",296,1123,"Washington DC","Boston MA",88,384
"Independence Air",68,"Seattle WA","Washington DC",296,1137,"Washington DC","Boston MA",0,296
"Independence Air",68,"Seattle WA","Washington DC",296,1139,"Washington DC","Boston MA",102,398
"Delta Air Lines Inc.",233,"Seattle WA","Salt Lake City UT",124,1115,"Salt Lake City UT","Boston MA",295,419
"Delta Air Lines Inc.",233,"Seattle WA","Salt Lake City UT",124,1180,"Salt Lake City UT","Boston MA",265,389
"Delta Air Lines Inc.",233,"Seattle WA","Salt Lake City UT",124,1843,"Salt Lake City UT","Boston MA",260,384
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,437,"New York NY","Boston MA",80,406
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1906,"New York NY","Boston MA",64,390
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1908,"New York NY","Boston MA",55,381
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1910,"New York NY","Boston MA",69,395
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1912,"New York NY","Boston MA",70,396
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1914,"New York NY","Boston MA",78,404
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1916,"New York NY","Boston MA",70,396
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1918,"New York NY","Boston MA",61,387
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1920,"New York NY","Boston MA",70,396
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1922,"New York NY","Boston MA",61,387
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1924,"New York NY","Boston MA",60,386
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1926,"New York NY","Boston MA",71,397
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1928,"New York NY","Boston MA",64,390
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1930,"New York NY","Boston MA",73,399
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1932,"New York NY","Boston MA",67,393
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1934,"New York NY","Boston MA",64,390
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,1936,"New York NY","Boston MA",54,380
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2311,"New York NY","Boston MA",77,403
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2666,"New York NY","Boston MA",73,399
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2669,"New York NY","Boston MA",66,392
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2673,"New York NY","Boston MA",74,400
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2674,"New York NY","Boston MA",81,407
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2675,"New York NY","Boston MA",85,411
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2676,"New York NY","Boston MA",59,385
"Delta Air Lines Inc.",508,"Seattle WA","New York NY",326,2677,"New York NY","Boston MA",64,390
"Delta Air Lines Inc.",528,"Seattle WA","Atlanta GA",299,1066,"Atlanta GA","Boston MA",0,299
"Delta Air Lines Inc.",616,"Seattle WA","Atlanta GA",282,1066,"Atlanta GA","Boston MA",0,282
"Delta Air Lines Inc.",667,"Seattle WA","Atlanta GA",312,1066,"Atlanta GA","Boston MA",0,312
"Delta Air Lines Inc.",706,"Seattle WA","Atlanta GA",341,1066,"Atlanta GA","Boston MA",0,341
"Delta Air Lines Inc.",826,"Seattle WA","Salt Lake City UT",107,1059,"Salt Lake City UT","Boston MA",298,405
"Delta Air Lines Inc.",826,"Seattle WA","Salt Lake City UT",107,1115,"Salt Lake City UT","Boston MA",295,402
"Delta Air Lines Inc.",826,"Seattle WA","Salt Lake City UT",107,1180,"Salt Lake City UT","Boston MA",265,372
"Delta Air Lines Inc.",826,"Seattle WA","Salt Lake City UT",107,1843,"Salt Lake City UT","Boston MA",260,367
"Delta Air Lines Inc.",866,"Seattle WA","Salt Lake City UT",107,1059,"Salt Lake City UT","Boston MA",298,405
"Delta Air Lines Inc.",866,"Seattle WA","Salt Lake City UT",107,1115,"Salt Lake City UT","Boston MA",295,402
"Delta Air Lines Inc.",866,"Seattle WA","Salt Lake City UT",107,1180,"Salt Lake City UT","Boston MA",265,372
"Delta Air Lines Inc.",866,"Seattle WA","Salt Lake City UT",107,1843,"Salt Lake City UT","Boston MA",260,367
"Delta Air Lines Inc.",992,"Seattle WA","Salt Lake City UT",129,1180,"Salt Lake City UT","Boston MA",265,394
"Delta Air Lines Inc.",992,"Seattle WA","Salt Lake City UT",129,1843,"Salt Lake City UT","Boston MA",260,389
"Delta Air Lines Inc.",1057,"Seattle WA","Cincinnati OH",264,63,"Cincinnati OH","Boston MA",131,395
"Delta Air Lines Inc.",1057,"Seattle WA","Cincinnati OH",264,627,"Cincinnati OH","Boston MA",142,406
"Delta Air Lines Inc.",1057,"Seattle WA","Cincinnati OH",264,630,"Cincinnati OH","Boston MA",129,393
"Delta Air Lines Inc.",1057,"Seattle WA","Cincinnati OH",264,810,"Cincinnati OH","Boston MA",135,399
"Delta Air Lines Inc.",1057,"Seattle WA","Cincinnati OH",264,1078,"Cincinnati OH","Boston MA",129,393
"Delta Air Lines Inc.",1057,"Seattle WA","Cincinnati OH",264,1098,"Cincinnati OH","Boston MA",132,396
"Delta Air Lines Inc.",1162,"Seattle WA","Cincinnati OH",260,63,"Cincinnati OH","Boston MA",131,391
"Delta Air Lines Inc.",1162,"Seattle WA","Cincinnati OH",260,627,"Cincinnati OH","Boston MA",142,402
"Delta Air Lines Inc.",1162,"Seattle WA","Cincinnati OH",260,630,"Cincinnati OH","Boston MA",129,389
"Delta Air Lines Inc.",1162,"Seattle WA","Cincinnati OH",260,810,"Cincinnati OH","Boston MA",135,395
"Delta Air Lines Inc.",1162,"Seattle WA","Cincinnati OH",260,1078,"Cincinnati OH","Boston MA",129,389
"Delta Air Lines Inc.",1162,"Seattle WA","Cincinnati OH",260,1098,"Cincinnati OH","Boston MA",132,392
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,437,"New York NY","Boston MA",80,408
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1906,"New York NY","Boston MA",64,392
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1908,"New York NY","Boston MA",55,383
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1910,"New York NY","Boston MA",69,397
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1912,"New York NY","Boston MA",70,398
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1914,"New York NY","Boston MA",78,406
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1916,"New York NY","Boston MA",70,398
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1918,"New York NY","Boston MA",61,389
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1920,"New York NY","Boston MA",70,398
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1922,"New York NY","Boston MA",61,389
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1924,"New York NY","Boston MA",60,388
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1926,"New York NY","Boston MA",71,399
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1928,"New York NY","Boston MA",64,392
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1930,"New York NY","Boston MA",73,401
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1932,"New York NY","Boston MA",67,395
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1934,"New York NY","Boston MA",64,392
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,1936,"New York NY","Boston MA",54,382
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2311,"New York NY","Boston MA",77,405
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2666,"New York NY","Boston MA",73,401
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2669,"New York NY","Boston MA",66,394
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2673,"New York NY","Boston MA",74,402
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2674,"New York NY","Boston MA",81,409
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2675,"New York NY","Boston MA",85,413
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2676,"New York NY","Boston MA",59,387
"Delta Air Lines Inc.",1178,"Seattle WA","New York NY",328,2677,"New York NY","Boston MA",64,392
"Delta Air Lines Inc.",1181,"Seattle WA","Salt Lake City UT",117,1059,"Salt Lake City UT","Boston MA",298,415
"Delta Air Lines Inc.",1181,"Seattle WA","Salt Lake City UT",117,1115,"Salt Lake City UT","Boston MA",295,412
"Delta Air Lines Inc.",1181,"Seattle WA","Salt Lake City UT",117,1180,"Salt Lake City UT","Boston MA",265,382
"Delta Air Lines Inc.",1181,"Seattle WA","Salt Lake City UT",117,1843,"Salt Lake City UT","Boston MA",260,377
"Delta Air Lines Inc.",1509,"Seattle WA","Atlanta GA",292,1066,"Atlanta GA","Boston MA",0,292
"Delta Air Lines Inc.",1520,"Seattle WA","Atlanta GA",284,1066,"Atlanta GA","Boston MA",0,284
"Delta Air Lines Inc.",1562,"Seattle WA","Atlanta GA",293,1066,"Atlanta GA","Boston MA",0,293
"Delta Air Lines Inc.",1812,"Seattle WA","Cincinnati OH",259,63,"Cincinnati OH","Boston MA",131,390
"Delta Air Lines Inc.",1812,"Seattle WA","Cincinnati OH",259,627,"Cincinnati OH","Boston MA",142,401
"Delta Air Lines Inc.",1812,"Seattle WA","Cincinnati OH",259,630,"Cincinnati OH","Boston MA",129,388
"Delta Air Lines Inc.",1812,"Seattle WA","Cincinnati OH",259,810,"Cincinnati OH","Boston MA",135,394
"Delta Air Lines Inc.",1812,"Seattle WA","Cincinnati OH",259,1078,"Cincinnati OH","Boston MA",129,388
"Delta Air Lines Inc.",1812,"Seattle WA","Cincinnati OH",259,1098,"Cincinnati OH","Boston MA",132,391
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,437,"New York NY","Boston MA",80,391
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1906,"New York NY","Boston MA",64,375
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1908,"New York NY","Boston MA",55,366
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1910,"New York NY","Boston MA",69,380
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1912,"New York NY","Boston MA",70,381
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1914,"New York NY","Boston MA",78,389
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1916,"New York NY","Boston MA",70,381
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1918,"New York NY","Boston MA",61,372
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1920,"New York NY","Boston MA",70,381
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1922,"New York NY","Boston MA",61,372
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1924,"New York NY","Boston MA",60,371
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1926,"New York NY","Boston MA",71,382
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1928,"New York NY","Boston MA",64,375
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1930,"New York NY","Boston MA",73,384
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1932,"New York NY","Boston MA",67,378
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1934,"New York NY","Boston MA",64,375
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,1936,"New York NY","Boston MA",54,365
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2311,"New York NY","Boston MA",77,388
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2666,"New York NY","Boston MA",73,384
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2669,"New York NY","Boston MA",66,377
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2673,"New York NY","Boston MA",74,385
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2674,"New York NY","Boston MA",81,392
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2675,"New York NY","Boston MA",85,396
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2676,"New York NY","Boston MA",59,370
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2677,"New York NY","Boston MA",64,375
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2692,"New York NY","Boston MA",100,411
"Delta Air Lines Inc.",2010,"Seattle WA","New York NY",311,2788,"New York NY","Boston MA",98,409
"Northwest Airlines Inc.",154,"Seattle WA","Minneapolis MN",185,156,"Minneapolis MN","Boston MA",200,385
"Northwest Airlines Inc.",154,"Seattle WA","Minneapolis MN",185,588,"Minneapolis MN","Boston MA",169,354
"Northwest Airlines Inc.",154,"Seattle WA","Minneapolis MN",185,724,"Minneapolis MN","Boston MA",177,362
"Northwest Airlines Inc.",154,"Seattle WA","Minneapolis MN",185,784,"Minneapolis MN","Boston MA",195,380
"Northwest Airlines Inc.",154,"Seattle WA","Minneapolis MN",185,846,"Minneapolis MN","Boston MA",175,360
"Northwest Airlines Inc.",154,"Seattle WA","Minneapolis MN",185,1268,"Minneapolis MN","Boston MA",174,359
"Northwest Airlines Inc.",156,"Seattle WA","Minneapolis MN",194,156,"Minneapolis MN","Boston MA",200,394
"Northwest Airlines Inc.",156,"Seattle WA","Minneapolis MN",194,588,"Minneapolis MN","Boston MA",169,363
"Northwest Airlines Inc.",156,"Seattle WA","Minneapolis MN",194,724,"Minneapolis MN","Boston MA",177,371
"Northwest Airlines Inc.",156,"Seattle WA","Minneapolis MN",194,784,"Minneapolis MN","Boston MA",195,389
"Northwest Airlines Inc.",156,"Seattle WA","Minneapolis MN",194,846,"Minneapolis MN","Boston MA",175,369
"Northwest Airlines Inc.",156,"Seattle WA","Minneapolis MN",194,1268,"Minneapolis MN","Boston MA",174,368
"Northwest Airlines Inc.",158,"Seattle WA","Minneapolis MN",185,156,"Minneapolis MN","Boston MA",200,385
"Northwest Airlines Inc.",158,"Seattle WA","Minneapolis MN",185,588,"Minneapolis MN","Boston MA",169,354
"Northwest Airlines Inc.",158,"Seattle WA","Minneapolis MN",185,724,"Minneapolis MN","Boston MA",177,362
"Northwest Airlines Inc.",158,"Seattle WA","Minneapolis MN",185,784,"Minneapolis MN","Boston MA",195,380
"Northwest Airlines Inc.",158,"Seattle WA","Minneapolis MN",185,846,"Minneapolis MN","Boston MA",175,360
"Northwest Airlines Inc.",158,"Seattle WA","Minneapolis MN",185,1268,"Minneapolis MN","Boston MA",174,359
"Northwest Airlines Inc.",160,"Seattle WA","Minneapolis MN",218,156,"Minneapolis MN","Boston MA",200,418
"Northwest Airlines Inc.",160,"Seattle WA","Minneapolis MN",218,588,"Minneapolis MN","Boston MA",169,387
"Northwest Airlines Inc.",160,"Seattle WA","Minneapolis MN",218,724,"Minneapolis MN","Boston MA",177,395
"Northwest Airlines Inc.",160,"Seattle WA","Minneapolis MN",218,784,"Minneapolis MN","Boston MA",195,413
"Northwest Airlines Inc.",160,"Seattle WA","Minneapolis MN",218,846,"Minneapolis MN","Boston MA",175,393
"Northwest Airlines Inc.",160,"Seattle WA","Minneapolis MN",218,1268,"Minneapolis MN","Boston MA",174,392
"Northwest Airlines Inc.",162,"Seattle WA","Minneapolis MN",195,156,"Minneapolis MN","Boston MA",200,395
"Northwest Airlines Inc.",162,"Seattle WA","Minneapolis MN",195,588,"Minneapolis MN","Boston MA",169,364
"Northwest Airlines Inc.",162,"Seattle WA","Minneapolis MN",195,724,"Minneapolis MN","Boston MA",177,372
"Northwest Airlines Inc.",162,"Seattle WA","Minneapolis MN",195,784,"Minneapolis MN","Boston MA",195,390
"Northwest Airlines Inc.",162,"Seattle WA","Minneapolis MN",195,846,"Minneapolis MN","Boston MA",175,370
"Northwest Airlines Inc.",162,"Seattle WA","Minneapolis MN",195,1268,"Minneapolis MN","Boston MA",174,369
"Northwest Airlines Inc.",164,"Seattle WA","Minneapolis MN",195,156,"Minneapolis MN","Boston MA",200,395
"Northwest Airlines Inc.",164,"Seattle WA","Minneapolis MN",195,588,"Minneapolis MN","Boston MA",169,364
"Northwest Airlines Inc.",164,"Seattle WA","Minneapolis MN",195,724,"Minneapolis MN","Boston MA",177,372
"Northwest Airlines Inc.",164,"Seattle WA","Minneapolis MN",195,784,"Minneapolis MN","Boston MA",195,390
"Northwest Airlines Inc.",164,"Seattle WA","Minneapolis MN",195,846,"Minneapolis MN","Boston MA",175,370
"Northwest Airlines Inc.",164,"Seattle WA","Minneapolis MN",195,1268,"Minneapolis MN","Boston MA",174,369
"Northwest Airlines Inc.",172,"Seattle WA","Minneapolis MN",183,156,"Minneapolis MN","Boston MA",200,383
"Northwest Airlines Inc.",172,"Seattle WA","Minneapolis MN",183,588,"Minneapolis MN","Boston MA",169,352
"Northwest Airlines Inc.",172,"Seattle WA","Minneapolis MN",183,724,"Minneapolis MN","Boston MA",177,360
"Northwest Airlines Inc.",172,"Seattle WA","Minneapolis MN",183,784,"Minneapolis MN","Boston MA",195,378
"Northwest Airlines Inc.",172,"Seattle WA","Minneapolis MN",183,846,"Minneapolis MN","Boston MA",175,358
"Northwest Airlines Inc.",172,"Seattle WA","Minneapolis MN",183,1268,"Minneapolis MN","Boston MA",174,357
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,212,"Detroit MI","Boston MA",109,366
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,372,"Detroit MI","Boston MA",116,373
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,380,"Detroit MI","Boston MA",125,382
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,382,"Detroit MI","Boston MA",116,373
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,388,"Detroit MI","Boston MA",113,370
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,485,"Detroit MI","Boston MA",120,377
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,491,"Detroit MI","Boston MA",139,396
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,1226,"Detroit MI","Boston MA",125,382
"Northwest Airlines Inc.",210,"Seattle WA","Detroit MI",257,1981,"Detroit MI","Boston MA",131,388
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,212,"Detroit MI","Boston MA",109,379
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,372,"Detroit MI","Boston MA",116,386
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,380,"Detroit MI","Boston MA",125,395
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,382,"Detroit MI","Boston MA",116,386
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,388,"Detroit MI","Boston MA",113,383
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,485,"Detroit MI","Boston MA",120,390
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,491,"Detroit MI","Boston MA",139,409
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,1226,"Detroit MI","Boston MA",125,395
"Northwest Airlines Inc.",212,"Seattle WA","Detroit MI",270,1981,"Detroit MI","Boston MA",131,401
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,212,"Detroit MI","Boston MA",109,356
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,372,"Detroit MI","Boston MA",116,363
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,380,"Detroit MI","Boston MA",125,372
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,382,"Detroit MI","Boston MA",116,363
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,388,"Detroit MI","Boston MA",113,360
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,485,"Detroit MI","Boston MA",120,367
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,491,"Detroit MI","Boston MA",139,386
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,1226,"Detroit MI","Boston MA",125,372
"Northwest Airlines Inc.",216,"Seattle WA","Detroit MI",247,1981,"Detroit MI","Boston MA",131,378
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,212,"Detroit MI","Boston MA",109,371
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,372,"Detroit MI","Boston MA",116,378
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,380,"Detroit MI","Boston MA",125,387
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,382,"Detroit MI","Boston MA",116,378
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,388,"Detroit MI","Boston MA",113,375
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,485,"Detroit MI","Boston MA",120,382
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,491,"Detroit MI","Boston MA",139,401
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,1226,"Detroit MI","Boston MA",125,387
"Northwest Airlines Inc.",222,"Seattle WA","Detroit MI",262,1981,"Detroit MI","Boston MA",131,393
"Northwest Airlines Inc.",576,"Seattle WA","Minneapolis MN",192,156,"Minneapolis MN","Boston MA",200,392
"Northwest Airlines Inc.",576,"Seattle WA","Minneapolis MN",192,588,"Minneapolis MN","Boston MA",169,361
"Northwest Airlines Inc.",576,"Seattle WA","Minneapolis MN",192,724,"Minneapolis MN","Boston MA",177,369
"Northwest Airlines Inc.",576,"Seattle WA","Minneapolis MN",192,784,"Minneapolis MN","Boston MA",195,387
"Northwest Airlines Inc.",576,"Seattle WA","Minneapolis MN",192,846,"Minneapolis MN","Boston MA",175,367
"Northwest Airlines Inc.",576,"Seattle WA","Minneapolis MN",192,1268,"Minneapolis MN","Boston MA",174,366
"Northwest Airlines Inc.",1928,"Seattle WA","Minneapolis MN",179,156,"Minneapolis MN","Boston MA",200,379
"Northwest Airlines Inc.",1928,"Seattle WA","Minneapolis MN",179,588,"Minneapolis MN","Boston MA",169,348
"Northwest Airlines Inc.",1928,"Seattle WA","Minneapolis MN",179,724,"Minneapolis MN","Boston MA",177,356
"Northwest Airlines Inc.",1928,"Seattle WA","Minneapolis MN",179,784,"Minneapolis MN","Boston MA",195,374
"Northwest Airlines Inc.",1928,"Seattle WA","Minneapolis MN",179,846,"Minneapolis MN","Boston MA",175,354
"Northwest Airlines Inc.",1928,"Seattle WA","Minneapolis MN",179,1268,"Minneapolis MN","Boston MA",174,353
"United Air Lines Inc.",218,"Seattle WA","Washington DC",338,980,"Washington DC","Boston MA",0,338
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,804,"Washington DC","Boston MA",84,391
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,860,"Washington DC","Boston MA",84,391
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,980,"Washington DC","Boston MA",0,307
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,1133,"Washington DC","Boston MA",96,403
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,1187,"Washington DC","Boston MA",88,395
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,1562,"Washington DC","Boston MA",103,410
"United Air Lines Inc.",224,"Seattle WA","Washington DC",307,1753,"Washington DC","Boston MA",110,417
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,354,"Denver CO","Boston MA",249,393
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,568,"Denver CO","Boston MA",221,365
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,584,"Denver CO","Boston MA",231,375
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,677,"Denver CO","Boston MA",226,370
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,726,"Denver CO","Boston MA",219,363
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,744,"Denver CO","Boston MA",224,368
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,1216,"Denver CO","Boston MA",238,382
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,1568,"Denver CO","Boston MA",247,391
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,1907,"Denver CO","Boston MA",252,396
"United Air Lines Inc.",282,"Seattle WA","Denver CO",144,1961,"Denver CO","Boston MA",236,380
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,354,"Denver CO","Boston MA",249,394
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,568,"Denver CO","Boston MA",221,366
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,584,"Denver CO","Boston MA",231,376
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,677,"Denver CO","Boston MA",226,371
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,726,"Denver CO","Boston MA",219,364
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,744,"Denver CO","Boston MA",224,369
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,1216,"Denver CO","Boston MA",238,383
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,1568,"Denver CO","Boston MA",247,392
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,1907,"Denver CO","Boston MA",252,397
"United Air Lines Inc.",324,"Seattle WA","Denver CO",145,1961,"Denver CO","Boston MA",236,381
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,354,"Denver CO","Boston MA",249,249
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,568,"Denver CO","Boston MA",221,221
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,584,"Denver CO","Boston MA",231,231
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,677,"Denver CO","Boston MA",226,226
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,726,"Denver CO","Boston MA",219,219
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,744,"Denver CO","Boston MA",224,224
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,1216,"Denver CO","Boston MA",238,238
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,1568,"Denver CO","Boston MA",247,247
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,1907,"Denver CO","Boston MA",252,252
"United Air Lines Inc.",356,"Seattle WA","Denver CO",0,1961,"Denver CO","Boston MA",236,236
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,448,"Chicago IL","Boston MA",129,129
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,524,"Chicago IL","Boston MA",138,138
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,526,"Chicago IL","Boston MA",127,127
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,528,"Chicago IL","Boston MA",131,131
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,532,"Chicago IL","Boston MA",136,136
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,534,"Chicago IL","Boston MA",166,166
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,536,"Chicago IL","Boston MA",173,173
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,538,"Chicago IL","Boston MA",0,0
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,540,"Chicago IL","Boston MA",164,164
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,542,"Chicago IL","Boston MA",157,157
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,544,"Chicago IL","Boston MA",139,139
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,582,"Chicago IL","Boston MA",128,128
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,688,"Chicago IL","Boston MA",147,147
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,882,"Chicago IL","Boston MA",148,148
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,1253,"Chicago IL","Boston MA",133,133
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,1262,"Chicago IL","Boston MA",150,150
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,1534,"Chicago IL","Boston MA",134,134
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,1574,"Chicago IL","Boston MA",140,140
"United Air Lines Inc.",384,"Seattle WA","Chicago IL",0,1705,"Chicago IL","Boston MA",127,127
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,354,"Denver CO","Boston MA",249,399
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,568,"Denver CO","Boston MA",221,371
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,584,"Denver CO","Boston MA",231,381
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,677,"Denver CO","Boston MA",226,376
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,726,"Denver CO","Boston MA",219,369
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,744,"Denver CO","Boston MA",224,374
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,1216,"Denver CO","Boston MA",238,388
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,1568,"Denver CO","Boston MA",247,397
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,1907,"Denver CO","Boston MA",252,402
"United Air Lines Inc.",452,"Seattle WA","Denver CO",150,1961,"Denver CO","Boston MA",236,386
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,354,"Denver CO","Boston MA",249,393
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,568,"Denver CO","Boston MA",221,365
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,584,"Denver CO","Boston MA",231,375
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,677,"Denver CO","Boston MA",226,370
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,726,"Denver CO","Boston MA",219,363
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,744,"Denver CO","Boston MA",224,368
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,1216,"Denver CO","Boston MA",238,382
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,1568,"Denver CO","Boston MA",247,391
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,1907,"Denver CO","Boston MA",252,396
"United Air Lines Inc.",460,"Seattle WA","Denver CO",144,1961,"Denver CO","Boston MA",236,380
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,448,"Chicago IL","Boston MA",129,362
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,524,"Chicago IL","Boston MA",138,371
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,526,"Chicago IL","Boston MA",127,360
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,528,"Chicago IL","Boston MA",131,364
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,532,"Chicago IL","Boston MA",136,369
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,534,"Chicago IL","Boston MA",166,399
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,536,"Chicago IL","Boston MA",173,406
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,538,"Chicago IL","Boston MA",0,233
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,540,"Chicago IL","Boston MA",164,397
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,542,"Chicago IL","Boston MA",157,390
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,544,"Chicago IL","Boston MA",139,372
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,582,"Chicago IL","Boston MA",128,361
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,688,"Chicago IL","Boston MA",147,380
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,882,"Chicago IL","Boston MA",148,381
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,1253,"Chicago IL","Boston MA",133,366
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,1262,"Chicago IL","Boston MA",150,383
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,1534,"Chicago IL","Boston MA",134,367
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,1574,"Chicago IL","Boston MA",140,373
"United Air Lines Inc.",486,"Seattle WA","Chicago IL",233,1705,"Chicago IL","Boston MA",127,360
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,354,"Denver CO","Boston MA",249,395
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,568,"Denver CO","Boston MA",221,367
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,584,"Denver CO","Boston MA",231,377
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,677,"Denver CO","Boston MA",226,372
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,726,"Denver CO","Boston MA",219,365
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,744,"Denver CO","Boston MA",224,370
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,1216,"Denver CO","Boston MA",238,384
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,1568,"Denver CO","Boston MA",247,393
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,1907,"Denver CO","Boston MA",252,398
"United Air Lines Inc.",598,"Seattle WA","Denver CO",146,1961,"Denver CO","Boston MA",236,382
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,448,"Chicago IL","Boston MA",129,361
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,524,"Chicago IL","Boston MA",138,370
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,526,"Chicago IL","Boston MA",127,359
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,528,"Chicago IL","Boston MA",131,363
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,532,"Chicago IL","Boston MA",136,368
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,534,"Chicago IL","Boston MA",166,398
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,536,"Chicago IL","Boston MA",173,405
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,538,"Chicago IL","Boston MA",0,232
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,540,"Chicago IL","Boston MA",164,396
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,542,"Chicago IL","Boston MA",157,389
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,544,"Chicago IL","Boston MA",139,371
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,582,"Chicago IL","Boston MA",128,360
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,688,"Chicago IL","Boston MA",147,379
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,882,"Chicago IL","Boston MA",148,380
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,1253,"Chicago IL","Boston MA",133,365
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,1262,"Chicago IL","Boston MA",150,382
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,1534,"Chicago IL","Boston MA",134,366
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,1574,"Chicago IL","Boston MA",140,372
"United Air Lines Inc.",646,"Seattle WA","Chicago IL",232,1705,"Chicago IL","Boston MA",127,359
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,448,"Chicago IL","Boston MA",129,352
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,524,"Chicago IL","Boston MA",138,361
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,526,"Chicago IL","Boston MA",127,350
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,528,"Chicago IL","Boston MA",131,354
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,532,"Chicago IL","Boston MA",136,359
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,534,"Chicago IL","Boston MA",166,389
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,536,"Chicago IL","Boston MA",173,396
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,538,"Chicago IL","Boston MA",0,223
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,540,"Chicago IL","Boston MA",164,387
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,542,"Chicago IL","Boston MA",157,380
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,544,"Chicago IL","Boston MA",139,362
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,582,"Chicago IL","Boston MA",128,351
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,688,"Chicago IL","Boston MA",147,370
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,882,"Chicago IL","Boston MA",148,371
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,1253,"Chicago IL","Boston MA",133,356
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,1262,"Chicago IL","Boston MA",150,373
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,1534,"Chicago IL","Boston MA",134,357
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,1574,"Chicago IL","Boston MA",140,363
"United Air Lines Inc.",754,"Seattle WA","Chicago IL",223,1705,"Chicago IL","Boston MA",127,350
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,354,"Denver CO","Boston MA",249,392
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,568,"Denver CO","Boston MA",221,364
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,584,"Denver CO","Boston MA",231,374
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,677,"Denver CO","Boston MA",226,369
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,726,"Denver CO","Boston MA",219,362
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,744,"Denver CO","Boston MA",224,367
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,1216,"Denver CO","Boston MA",238,381
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,1568,"Denver CO","Boston MA",247,390
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,1907,"Denver CO","Boston MA",252,395
"United Air Lines Inc.",768,"Seattle WA","Denver CO",143,1961,"Denver CO","Boston MA",236,379
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,354,"Denver CO","Boston MA",249,408
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,568,"Denver CO","Boston MA",221,380
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,584,"Denver CO","Boston MA",231,390
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,677,"Denver CO","Boston MA",226,385
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,726,"Denver CO","Boston MA",219,378
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,744,"Denver CO","Boston MA",224,383
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,1216,"Denver CO","Boston MA",238,397
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,1568,"Denver CO","Boston MA",247,406
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,1907,"Denver CO","Boston MA",252,411
"United Air Lines Inc.",822,"Seattle WA","Denver CO",159,1961,"Denver CO","Boston MA",236,395
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,354,"Denver CO","Boston MA",249,392
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,568,"Denver CO","Boston MA",221,364
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,584,"Denver CO","Boston MA",231,374
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,677,"Denver CO","Boston MA",226,369
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,726,"Denver CO","Boston MA",219,362
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,744,"Denver CO","Boston MA",224,367
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,1216,"Denver CO","Boston MA",238,381
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,1568,"Denver CO","Boston MA",247,390
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,1907,"Denver CO","Boston MA",252,395
"United Air Lines Inc.",876,"Seattle WA","Denver CO",143,1961,"Denver CO","Boston MA",236,379
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,804,"Washington DC","Boston MA",84,392
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,860,"Washington DC","Boston MA",84,392
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,980,"Washington DC","Boston MA",0,308
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,1133,"Washington DC","Boston MA",96,404
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,1187,"Washington DC","Boston MA",88,396
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,1562,"Washington DC","Boston MA",103,411
"United Air Lines Inc.",916,"Seattle WA","Washington DC",308,1753,"Washington DC","Boston MA",110,418
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,448,"Chicago IL","Boston MA",129,394
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,524,"Chicago IL","Boston MA",138,403
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,526,"Chicago IL","Boston MA",127,392
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,528,"Chicago IL","Boston MA",131,396
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,532,"Chicago IL","Boston MA",136,401
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,538,"Chicago IL","Boston MA",0,265
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,544,"Chicago IL","Boston MA",139,404
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,582,"Chicago IL","Boston MA",128,393
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,688,"Chicago IL","Boston MA",147,412
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,882,"Chicago IL","Boston MA",148,413
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,1253,"Chicago IL","Boston MA",133,398
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,1262,"Chicago IL","Boston MA",150,415
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,1534,"Chicago IL","Boston MA",134,399
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,1574,"Chicago IL","Boston MA",140,405
"United Air Lines Inc.",938,"Seattle WA","Chicago IL",265,1705,"Chicago IL","Boston MA",127,392
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,448,"Chicago IL","Boston MA",129,358
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,524,"Chicago IL","Boston MA",138,367
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,526,"Chicago IL","Boston MA",127,356
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,528,"Chicago IL","Boston MA",131,360
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,532,"Chicago IL","Boston MA",136,365
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,534,"Chicago IL","Boston MA",166,395
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,536,"Chicago IL","Boston MA",173,402
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,538,"Chicago IL","Boston MA",0,229
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,540,"Chicago IL","Boston MA",164,393
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,542,"Chicago IL","Boston MA",157,386
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,544,"Chicago IL","Boston MA",139,368
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,582,"Chicago IL","Boston MA",128,357
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,688,"Chicago IL","Boston MA",147,376
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,882,"Chicago IL","Boston MA",148,377
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,1253,"Chicago IL","Boston MA",133,362
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,1262,"Chicago IL","Boston MA",150,379
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,1534,"Chicago IL","Boston MA",134,363
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,1574,"Chicago IL","Boston MA",140,369
"United Air Lines Inc.",942,"Seattle WA","Chicago IL",229,1705,"Chicago IL","Boston MA",127,356
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,354,"Denver CO","Boston MA",249,404
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,568,"Denver CO","Boston MA",221,376
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,584,"Denver CO","Boston MA",231,386
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,677,"Denver CO","Boston MA",226,381
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,726,"Denver CO","Boston MA",219,374
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,744,"Denver CO","Boston MA",224,379
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,1216,"Denver CO","Boston MA",238,393
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,1568,"Denver CO","Boston MA",247,402
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,1907,"Denver CO","Boston MA",252,407
"United Air Lines Inc.",1218,"Seattle WA","Denver CO",155,1961,"Denver CO","Boston MA",236,391
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,448,"Chicago IL","Boston MA",129,395
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,524,"Chicago IL","Boston MA",138,404
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,526,"Chicago IL","Boston MA",127,393
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,528,"Chicago IL","Boston MA",131,397
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,532,"Chicago IL","Boston MA",136,402
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,538,"Chicago IL","Boston MA",0,266
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,544,"Chicago IL","Boston MA",139,405
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,582,"Chicago IL","Boston MA",128,394
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,688,"Chicago IL","Boston MA",147,413
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,882,"Chicago IL","Boston MA",148,414
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,1253,"Chicago IL","Boston MA",133,399
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,1262,"Chicago IL","Boston MA",150,416
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,1534,"Chicago IL","Boston MA",134,400
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,1574,"Chicago IL","Boston MA",140,406
"United Air Lines Inc.",1236,"Seattle WA","Chicago IL",266,1705,"Chicago IL","Boston MA",127,393
"US Airways Inc.",28,"Seattle WA","Charlotte NC",303,750,"Charlotte NC","Boston MA",115,418
"US Airways Inc.",28,"Seattle WA","Charlotte NC",303,874,"Charlotte NC","Boston MA",116,419
"US Airways Inc.",28,"Seattle WA","Charlotte NC",303,1481,"Charlotte NC","Boston MA",116,419
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,18,"Philadelphia PA","Boston MA",67,385
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,23,"Philadelphia PA","Boston MA",82,400
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,62,"Philadelphia PA","Boston MA",96,414
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,138,"Philadelphia PA","Boston MA",87,405
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,160,"Philadelphia PA","Boston MA",94,412
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,252,"Philadelphia PA","Boston MA",77,395
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,387,"Philadelphia PA","Boston MA",87,405
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,412,"Philadelphia PA","Boston MA",76,394
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,500,"Philadelphia PA","Boston MA",98,416
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,522,"Philadelphia PA","Boston MA",88,406
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,543,"Philadelphia PA","Boston MA",85,403
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,822,"Philadelphia PA","Boston MA",81,399
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,1136,"Philadelphia PA","Boston MA",83,401
"US Airways Inc.",72,"Seattle WA","Philadelphia PA",318,1184,"Philadelphia PA","Boston MA",0,318
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,18,"Philadelphia PA","Boston MA",67,363
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,23,"Philadelphia PA","Boston MA",82,378
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,62,"Philadelphia PA","Boston MA",96,392
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,138,"Philadelphia PA","Boston MA",87,383
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,160,"Philadelphia PA","Boston MA",94,390
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,252,"Philadelphia PA","Boston MA",77,373
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,387,"Philadelphia PA","Boston MA",87,383
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,412,"Philadelphia PA","Boston MA",76,372
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,436,"Philadelphia PA","Boston MA",116,412
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,500,"Philadelphia PA","Boston MA",98,394
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,522,"Philadelphia PA","Boston MA",88,384
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,543,"Philadelphia PA","Boston MA",85,381
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,822,"Philadelphia PA","Boston MA",81,377
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,1030,"Philadelphia PA","Boston MA",106,402
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,1136,"Philadelphia PA","Boston MA",83,379
"US Airways Inc.",112,"Seattle WA","Philadelphia PA",296,1184,"Philadelphia PA","Boston MA",0,296
"US Airways Inc.",475,"Seattle WA","Pittsburgh PA",263,218,"Pittsburgh PA","Boston MA",96,359
"US Airways Inc.",475,"Seattle WA","Pittsburgh PA",263,380,"Pittsburgh PA","Boston MA",94,357
"US Airways Inc.",475,"Seattle WA","Pittsburgh PA",263,484,"Pittsburgh PA","Boston MA",81,344
"US Airways Inc.",475,"Seattle WA","Pittsburgh PA",263,802,"Pittsburgh PA","Boston MA",104,367
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,750,"Charlotte NC","Boston MA",115,394
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,874,"Charlotte NC","Boston MA",116,395
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,1054,"Charlotte NC","Boston MA",140,419
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,1070,"Charlotte NC","Boston MA",117,396
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,1148,"Charlotte NC","Boston MA",123,402
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,1202,"Charlotte NC","Boston MA",130,409
"US Airways Inc.",518,"Seattle WA","Charlotte NC",279,1481,"Charlotte NC","Boston MA",116,395
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,18,"Philadelphia PA","Boston MA",67,370
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,23,"Philadelphia PA","Boston MA",82,385
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,62,"Philadelphia PA","Boston MA",96,399
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,138,"Philadelphia PA","Boston MA",87,390
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,160,"Philadelphia PA","Boston MA",94,397
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,252,"Philadelphia PA","Boston MA",77,380
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,387,"Philadelphia PA","Boston MA",87,390
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,412,"Philadelphia PA","Boston MA",76,379
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,436,"Philadelphia PA","Boston MA",116,419
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,500,"Philadelphia PA","Boston MA",98,401
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,522,"Philadelphia PA","Boston MA",88,391
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,543,"Philadelphia PA","Boston MA",85,388
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,822,"Philadelphia PA","Boston MA",81,384
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,1030,"Philadelphia PA","Boston MA",106,409
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,1136,"Philadelphia PA","Boston MA",83,386
"US Airways Inc.",782,"Seattle WA","Philadelphia PA",303,1184,"Philadelphia PA","Boston MA",0,303
"Southwest Airlines Co.",164,"Seattle WA","Nashville TN",258,360,"Nashville TN","Boston MA",160,418
"Southwest Airlines Co.",164,"Seattle WA","Nashville TN",258,3852,"Nashville TN","Boston MA",149,407
"Southwest Airlines Co.",1436,"Seattle WA","Kansas City MO",205,5,"Kansas City MO","Boston MA",182,387
"Southwest Airlines Co.",1436,"Seattle WA","Kansas City MO",205,2425,"Kansas City MO","Boston MA",167,372
"Southwest Airlines Co.",202,"Seattle WA","Chicago IL",225,277,"Chicago IL","Boston MA",142,367
"Southwest Airlines Co.",202,"Seattle WA","Chicago IL",225,1406,"Chicago IL","Boston MA",145,370
"Southwest Airlines Co.",202,"Seattle WA","Chicago IL",225,2960,"Chicago IL","Boston MA",141,366
"Southwest Airlines Co.",202,"Seattle WA","Chicago IL",225,3299,"Chicago IL","Boston MA",125,350
"Southwest Airlines Co.",202,"Seattle WA","Chicago IL",225,4821,"Chicago IL","Boston MA",131,356
"Southwest Airlines Co.",202,"Seattle WA","Chicago IL",225,5366,"Chicago IL","Boston MA",148,373
"Southwest Airlines Co.",1027,"Seattle WA","Chicago IL",245,277,"Chicago IL","Boston MA",142,387
"Southwest Airlines Co.",1027,"Seattle WA","Chicago IL",245,1406,"Chicago IL","Boston MA",145,390
"Southwest Airlines Co.",1027,"Seattle WA","Chicago IL",245,2960,"Chicago IL","Boston MA",141,386
"Southwest Airlines Co.",1027,"Seattle WA","Chicago IL",245,3299,"Chicago IL","Boston MA",125,370
"Southwest Airlines Co.",1027,"Seattle WA","Chicago IL",245,4821,"Chicago IL","Boston MA",131,376
"Southwest Airlines Co.",1027,"Seattle WA","Chicago IL",245,5366,"Chicago IL","Boston MA",148,393
"Southwest Airlines Co.",2220,"Seattle WA","Chicago IL",231,277,"Chicago IL","Boston MA",142,373
"Southwest Airlines Co.",2220,"Seattle WA","Chicago IL",231,1406,"Chicago IL","Boston MA",145,376
"Southwest Airlines Co.",2220,"Seattle WA","Chicago IL",231,2960,"Chicago IL","Boston MA",141,372
"Southwest Airlines Co.",2220,"Seattle WA","Chicago IL",231,3299,"Chicago IL","Boston MA",125,356
"Southwest Airlines Co.",2220,"Seattle WA","Chicago IL",231,4821,"Chicago IL","Boston MA",131,362
"Southwest Airlines Co.",2220,"Seattle WA","Chicago IL",231,5366,"Chicago IL","Boston MA",148,379
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,26,"Chicago IL","Boston MA",150,378
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,186,"Chicago IL","Boston MA",137,365
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,288,"Chicago IL","Boston MA",137,365
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,366,"Chicago IL","Boston MA",150,378
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,542,"Chicago IL","Boston MA",136,364
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,818,"Chicago IL","Boston MA",133,361
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,868,"Chicago IL","Boston MA",177,405
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,876,"Chicago IL","Boston MA",135,363
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1205,"Chicago IL","Boston MA",128,356
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1240,"Chicago IL","Boston MA",130,358
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1299,"Chicago IL","Boston MA",133,361
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1400,"Chicago IL","Boston MA",143,371
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1435,"Chicago IL","Boston MA",133,361
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1557,"Chicago IL","Boston MA",122,350
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,1718,"Chicago IL","Boston MA",140,368
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,2018,"Chicago IL","Boston MA",138,366
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,2276,"Chicago IL","Boston MA",134,362
"American Airlines Inc.",42,"Seattle WA","Chicago IL",228,2503,"Chicago IL","Boston MA",127,355
"American Airlines Inc.",44,"Seattle WA","New York NY",322,84,"New York NY","Boston MA",74,396
"American Airlines Inc.",44,"Seattle WA","New York NY",322,199,"New York NY","Boston MA",80,402
"American Airlines Inc.",44,"Seattle WA","New York NY",322,235,"New York NY","Boston MA",91,413
"American Airlines Inc.",44,"Seattle WA","New York NY",322,1443,"New York NY","Boston MA",80,402
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2118,"New York NY","Boston MA",0,322
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2121,"New York NY","Boston MA",74,396
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2122,"New York NY","Boston MA",65,387
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2126,"New York NY","Boston MA",60,382
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2128,"New York NY","Boston MA",83,405
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2131,"New York NY","Boston MA",70,392
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2136,"New York NY","Boston MA",63,385
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2141,"New York NY","Boston MA",57,379
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2146,"New York NY","Boston MA",60,382
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2151,"New York NY","Boston MA",81,403
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2152,"New York NY","Boston MA",69,391
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2156,"New York NY","Boston MA",79,401
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2158,"New York NY","Boston MA",67,389
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2162,"New York NY","Boston MA",0,322
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2168,"New York NY","Boston MA",54,376
"American Airlines Inc.",44,"Seattle WA","New York NY",322,2172,"New York NY","Boston MA",80,402
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,26,"Chicago IL","Boston MA",150,383
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,186,"Chicago IL","Boston MA",137,370
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,288,"Chicago IL","Boston MA",137,370
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,366,"Chicago IL","Boston MA",150,383
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,542,"Chicago IL","Boston MA",136,369
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,818,"Chicago IL","Boston MA",133,366
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,868,"Chicago IL","Boston MA",177,410
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,876,"Chicago IL","Boston MA",135,368
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1205,"Chicago IL","Boston MA",128,361
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1240,"Chicago IL","Boston MA",130,363
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1299,"Chicago IL","Boston MA",133,366
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1400,"Chicago IL","Boston MA",143,376
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1435,"Chicago IL","Boston MA",133,366
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1557,"Chicago IL","Boston MA",122,355
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,1718,"Chicago IL","Boston MA",140,373
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,2018,"Chicago IL","Boston MA",138,371
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,2276,"Chicago IL","Boston MA",134,367
"American Airlines Inc.",184,"Seattle WA","Chicago IL",233,2503,"Chicago IL","Boston MA",127,360
"American Airlines Inc.",1070,"Seattle WA","Miami FL",358,1553,"Miami FL","Boston MA",0,358
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,26,"Chicago IL","Boston MA",150,377
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,186,"Chicago IL","Boston MA",137,364
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,288,"Chicago IL","Boston MA",137,364
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,366,"Chicago IL","Boston MA",150,377
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,542,"Chicago IL","Boston MA",136,363
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,636,"Chicago IL","Boston MA",192,419
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,818,"Chicago IL","Boston MA",133,360
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,868,"Chicago IL","Boston MA",177,404
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,876,"Chicago IL","Boston MA",135,362
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1205,"Chicago IL","Boston MA",128,355
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1240,"Chicago IL","Boston MA",130,357
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1299,"Chicago IL","Boston MA",133,360
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1400,"Chicago IL","Boston MA",143,370
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1435,"Chicago IL","Boston MA",133,360
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1557,"Chicago IL","Boston MA",122,349
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,1718,"Chicago IL","Boston MA",140,367
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,2018,"Chicago IL","Boston MA",138,365
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,2276,"Chicago IL","Boston MA",134,361
"American Airlines Inc.",1283,"Seattle WA","Chicago IL",227,2503,"Chicago IL","Boston MA",127,354
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,26,"Chicago IL","Boston MA",150,385
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,186,"Chicago IL","Boston MA",137,372
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,288,"Chicago IL","Boston MA",137,372
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,366,"Chicago IL","Boston MA",150,385
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,542,"Chicago IL","Boston MA",136,371
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,818,"Chicago IL","Boston MA",133,368
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,868,"Chicago IL","Boston MA",177,412
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,876,"Chicago IL","Boston MA",135,370
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1205,"Chicago IL","Boston MA",128,363
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1240,"Chicago IL","Boston MA",130,365
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1299,"Chicago IL","Boston MA",133,368
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1400,"Chicago IL","Boston MA",143,378
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1435,"Chicago IL","Boston MA",133,368
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1557,"Chicago IL","Boston MA",122,357
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,1718,"Chicago IL","Boston MA",140,375
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,2018,"Chicago IL","Boston MA",138,373
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,2276,"Chicago IL","Boston MA",134,369
"American Airlines Inc.",1239,"Seattle WA","Chicago IL",235,2503,"Chicago IL","Boston MA",127,362
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,26,"Chicago IL","Boston MA",150,387
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,186,"Chicago IL","Boston MA",137,374
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,288,"Chicago IL","Boston MA",137,374
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,366,"Chicago IL","Boston MA",150,387
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,542,"Chicago IL","Boston MA",136,373
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,818,"Chicago IL","Boston MA",133,370
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,868,"Chicago IL","Boston MA",177,414
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,876,"Chicago IL","Boston MA",135,372
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1205,"Chicago IL","Boston MA",128,365
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1240,"Chicago IL","Boston MA",130,367
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1299,"Chicago IL","Boston MA",133,370
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1400,"Chicago IL","Boston MA",143,380
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1435,"Chicago IL","Boston MA",133,370
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1557,"Chicago IL","Boston MA",122,359
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,1718,"Chicago IL","Boston MA",140,377
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,2018,"Chicago IL","Boston MA",138,375
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,2276,"Chicago IL","Boston MA",134,371
"American Airlines Inc.",1628,"Seattle WA","Chicago IL",237,2503,"Chicago IL","Boston MA",127,364
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,558,"Philadelphia PA","Boston MA",68,364
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,715,"Philadelphia PA","Boston MA",75,371
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1708,"Philadelphia PA","Boston MA",78,374
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1724,"Philadelphia PA","Boston MA",97,393
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1767,"Philadelphia PA","Boston MA",89,385
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1776,"Philadelphia PA","Boston MA",85,381
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1778,"Philadelphia PA","Boston MA",70,366
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1794,"Philadelphia PA","Boston MA",114,410
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1804,"Philadelphia PA","Boston MA",99,395
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1863,"Philadelphia PA","Boston MA",113,409
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,1888,"Philadelphia PA","Boston MA",78,374
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,2012,"Philadelphia PA","Boston MA",89,385
"American Airlines Inc.",776,"Seattle WA","Philadelphia PA",296,2058,"Philadelphia PA","Boston MA",81,377
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,558,"Philadelphia PA","Boston MA",68,369
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,715,"Philadelphia PA","Boston MA",75,376
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1708,"Philadelphia PA","Boston MA",78,379
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1724,"Philadelphia PA","Boston MA",97,398
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1767,"Philadelphia PA","Boston MA",89,390
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1776,"Philadelphia PA","Boston MA",85,386
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1778,"Philadelphia PA","Boston MA",70,371
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1794,"Philadelphia PA","Boston MA",114,415
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1804,"Philadelphia PA","Boston MA",99,400
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1863,"Philadelphia PA","Boston MA",113,414
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,1888,"Philadelphia PA","Boston MA",78,379
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,2012,"Philadelphia PA","Boston MA",89,390
"American Airlines Inc.",1800,"Seattle WA","Philadelphia PA",301,2058,"Philadelphia PA","Boston MA",81,382
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,1783,"Charlotte NC","Boston MA",124,404
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,1806,"Charlotte NC","Boston MA",123,403
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,1812,"Charlotte NC","Boston MA",119,399
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,1937,"Charlotte NC","Boston MA",137,417
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,1982,"Charlotte NC","Boston MA",138,418
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,1999,"Charlotte NC","Boston MA",124,404
"American Airlines Inc.",1925,"Seattle WA","Charlotte NC",280,2002,"Charlotte NC","Boston MA",125,405
"Alaska Airlines Inc.",414,"Seattle WA","Portland OR",47,30,"Portland OR","Boston MA",332,379
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,26,"Chicago IL","Boston MA",150,387
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,186,"Chicago IL","Boston MA",137,374
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,288,"Chicago IL","Boston MA",137,374
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,366,"Chicago IL","Boston MA",150,387
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,542,"Chicago IL","Boston MA",136,373
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,818,"Chicago IL","Boston MA",133,370
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,868,"Chicago IL","Boston MA",177,414
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,876,"Chicago IL","Boston MA",135,372
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1205,"Chicago IL","Boston MA",128,365
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1240,"Chicago IL","Boston MA",130,367
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1299,"Chicago IL","Boston MA",133,370
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1400,"Chicago IL","Boston MA",143,380
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1435,"Chicago IL","Boston MA",133,370
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1557,"Chicago IL","Boston MA",122,359
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,1718,"Chicago IL","Boston MA",140,377
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,2018,"Chicago IL","Boston MA",138,375
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,2276,"Chicago IL","Boston MA",134,371
"American Airlines Inc.",1519,"Seattle WA","Chicago IL",237,2503,"Chicago IL","Boston MA",127,364
"JetBlue Airways",264,"Seattle WA","New York NY",308,118,"New York NY","Boston MA",0,308
"JetBlue Airways",264,"Seattle WA","New York NY",308,318,"New York NY","Boston MA",69,377
"JetBlue Airways",264,"Seattle WA","New York NY",308,418,"New York NY","Boston MA",105,413
"JetBlue Airways",264,"Seattle WA","New York NY",308,518,"New York NY","Boston MA",104,412
"JetBlue Airways",264,"Seattle WA","New York NY",308,618,"New York NY","Boston MA",63,371
"JetBlue Airways",264,"Seattle WA","New York NY",308,718,"New York NY","Boston MA",58,366
"JetBlue Airways",264,"Seattle WA","New York NY",308,918,"New York NY","Boston MA",86,394
"JetBlue Airways",464,"Seattle WA","New York NY",315,118,"New York NY","Boston MA",0,315
"JetBlue Airways",464,"Seattle WA","New York NY",315,318,"New York NY","Boston MA",69,384
"JetBlue Airways",464,"Seattle WA","New York NY",315,518,"New York NY","Boston MA",104,419
"JetBlue Airways",464,"Seattle WA","New York NY",315,618,"New York NY","Boston MA",63,378
"JetBlue Airways",464,"Seattle WA","New York NY",315,718,"New York NY","Boston MA",58,373
"JetBlue Airways",464,"Seattle WA","New York NY",315,918,"New York NY","Boston MA",86,401
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,558,"Philadelphia PA","Boston MA",68,370
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,715,"Philadelphia PA","Boston MA",75,377
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1708,"Philadelphia PA","Boston MA",78,380
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1724,"Philadelphia PA","Boston MA",97,399
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1767,"Philadelphia PA","Boston MA",89,391
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1776,"Philadelphia PA","Boston MA",85,387
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1778,"Philadelphia PA","Boston MA",70,372
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1794,"Philadelphia PA","Boston MA",114,416
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1804,"Philadelphia PA","Boston MA",99,401
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1863,"Philadelphia PA","Boston MA",113,415
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,1888,"Philadelphia PA","Boston MA",78,380
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,2012,"Philadelphia PA","Boston MA",89,391
"American Airlines Inc.",524,"Seattle WA","Philadelphia PA",302,2058,"Philadelphia PA","Boston MA",81,383
"American Airlines Inc.",624,"Seattle WA","Charlotte NC",290,1783,"Charlotte NC","Boston MA",124,414
"American Airlines Inc.",624,"Seattle WA","Charlotte NC",290,1806,"Charlotte NC","Boston MA",123,413
"American Airlines Inc.",624,"Seattle WA","Charlotte NC",290,1812,"Charlotte NC","Boston MA",119,409
"American Airlines Inc.",624,"Seattle WA","Charlotte NC",290,1999,"Charlotte NC","Boston MA",124,414
"American Airlines Inc.",624,"Seattle WA","Charlotte NC",290,2002,"Charlotte NC","Boston MA",125,415
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,558,"Philadelphia PA","Boston MA",68,365
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,715,"Philadelphia PA","Boston MA",75,372
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1708,"Philadelphia PA","Boston MA",78,375
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1724,"Philadelphia PA","Boston MA",97,394
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1767,"Philadelphia PA","Boston MA",89,386
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1776,"Philadelphia PA","Boston MA",85,382
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1778,"Philadelphia PA","Boston MA",70,367
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1794,"Philadelphia PA","Boston MA",114,411
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1804,"Philadelphia PA","Boston MA",99,396
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1863,"Philadelphia PA","Boston MA",113,410
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,1888,"Philadelphia PA","Boston MA",78,375
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,2012,"Philadelphia PA","Boston MA",89,386
"American Airlines Inc.",685,"Seattle WA","Philadelphia PA",297,2058,"Philadelphia PA","Boston MA",81,378
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,158,"Detroit MI","Boston MA",119,364
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,188,"Detroit MI","Boston MA",110,355
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,1237,"Detroit MI","Boston MA",109,354
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,1622,"Detroit MI","Boston MA",109,354
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,1822,"Detroit MI","Boston MA",106,351
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,1903,"Detroit MI","Boston MA",106,351
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,2437,"Detroit MI","Boston MA",112,357
"Delta Air Lines Inc.",379,"Seattle WA","Detroit MI",245,2523,"Detroit MI","Boston MA",113,358
"Delta Air Lines Inc.",395,"Seattle WA","Salt Lake City UT",118,1059,"Salt Lake City UT","Boston MA",298,416
"Delta Air Lines Inc.",395,"Seattle WA","Salt Lake City UT",118,1115,"Salt Lake City UT","Boston MA",295,413
"Delta Air Lines Inc.",395,"Seattle WA","Salt Lake City UT",118,1180,"Salt Lake City UT","Boston MA",265,383
"Delta Air Lines Inc.",395,"Seattle WA","Salt Lake City UT",118,1843,"Salt Lake City UT","Boston MA",260,378
"Delta Air Lines Inc.",418,"Seattle WA","New York NY",356,1908,"New York NY","Boston MA",55,411
"Delta Air Lines Inc.",418,"Seattle WA","New York NY",356,1918,"New York NY","Boston MA",61,417
"Delta Air Lines Inc.",418,"Seattle WA","New York NY",356,1922,"New York NY","Boston MA",61,417
"Delta Air Lines Inc.",418,"Seattle WA","New York NY",356,1924,"New York NY","Boston MA",60,416
"Delta Air Lines Inc.",418,"Seattle WA","New York NY",356,1936,"New York NY","Boston MA",54,410
"Delta Air Lines Inc.",418,"Seattle WA","New York NY",356,2676,"New York NY","Boston MA",59,415
"Delta Air Lines Inc.",588,"Seattle WA","Minneapolis MN",201,808,"Minneapolis MN","Boston MA",173,374
"Delta Air Lines Inc.",588,"Seattle WA","Minneapolis MN",201,818,"Minneapolis MN","Boston MA",152,353
"Delta Air Lines Inc.",588,"Seattle WA","Minneapolis MN",201,868,"Minneapolis MN","Boston MA",170,371
"Delta Air Lines Inc.",588,"Seattle WA","Minneapolis MN",201,2062,"Minneapolis MN","Boston MA",194,395
"Delta Air Lines Inc.",588,"Seattle WA","Minneapolis MN",201,2549,"Minneapolis MN","Boston MA",173,374
"Delta Air Lines Inc.",588,"Seattle WA","Minneapolis MN",201,2588,"Minneapolis MN","Boston MA",168,369
"Delta Air Lines Inc.",663,"Seattle WA","Atlanta GA",279,1066,"Atlanta GA","Boston MA",0,279
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1906,"New York NY","Boston MA",64,404
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1908,"New York NY","Boston MA",55,395
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1910,"New York NY","Boston MA",69,409
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1912,"New York NY","Boston MA",70,410
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1914,"New York NY","Boston MA",78,418
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1916,"New York NY","Boston MA",70,410
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1918,"New York NY","Boston MA",61,401
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1920,"New York NY","Boston MA",70,410
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1922,"New York NY","Boston MA",61,401
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1924,"New York NY","Boston MA",60,400
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1926,"New York NY","Boston MA",71,411
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1928,"New York NY","Boston MA",64,404
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1930,"New York NY","Boston MA",73,413
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1932,"New York NY","Boston MA",67,407
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1934,"New York NY","Boston MA",64,404
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,1936,"New York NY","Boston MA",54,394
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,2311,"New York NY","Boston MA",77,417
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,2666,"New York NY","Boston MA",73,413
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,2669,"New York NY","Boston MA",66,406
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,2673,"New York NY","Boston MA",74,414
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,2676,"New York NY","Boston MA",59,399
"Delta Air Lines Inc.",1473,"Seattle WA","New York NY",340,2677,"New York NY","Boston MA",64,404
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,158,"Detroit MI","Boston MA",119,355
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,188,"Detroit MI","Boston MA",110,346
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,1237,"Detroit MI","Boston MA",109,345
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,1622,"Detroit MI","Boston MA",109,345
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,1822,"Detroit MI","Boston MA",106,342
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,1903,"Detroit MI","Boston MA",106,342
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,2437,"Detroit MI","Boston MA",112,348
"Delta Air Lines Inc.",1491,"Seattle WA","Detroit MI",236,2523,"Detroit MI","Boston MA",113,349
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,437,"New York NY","Boston MA",80,380
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1906,"New York NY","Boston MA",64,364
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1908,"New York NY","Boston MA",55,355
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1910,"New York NY","Boston MA",69,369
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1912,"New York NY","Boston MA",70,370
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1914,"New York NY","Boston MA",78,378
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1916,"New York NY","Boston MA",70,370
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1918,"New York NY","Boston MA",61,361
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1920,"New York NY","Boston MA",70,370
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1922,"New York NY","Boston MA",61,361
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1924,"New York NY","Boston MA",60,360
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1926,"New York NY","Boston MA",71,371
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1928,"New York NY","Boston MA",64,364
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1930,"New York NY","Boston MA",73,373
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1932,"New York NY","Boston MA",67,367
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1934,"New York NY","Boston MA",64,364
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,1936,"New York NY","Boston MA",54,354
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2311,"New York NY","Boston MA",77,377
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2666,"New York NY","Boston MA",73,373
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2669,"New York NY","Boston MA",66,366
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2673,"New York NY","Boston MA",74,374
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2674,"New York NY","Boston MA",81,381
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2675,"New York NY","Boston MA",85,385
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2676,"New York NY","Boston MA",59,359
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2677,"New York NY","Boston MA",64,364
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2692,"New York NY","Boston MA",100,400
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2788,"New York NY","Boston MA",98,398
"Delta Air Lines Inc.",1542,"Seattle WA","New York NY",300,2836,"New York NY","Boston MA",111,411
"Delta Air Lines Inc.",1598,"Seattle WA","Atlanta GA",282,1066,"Atlanta GA","Boston MA",0,282
"Delta Air Lines Inc.",1634,"Seattle WA","Salt Lake City UT",117,1059,"Salt Lake City UT","Boston MA",298,415
"Delta Air Lines Inc.",1634,"Seattle WA","Salt Lake City UT",117,1115,"Salt Lake City UT","Boston MA",295,412
"Delta Air Lines Inc.",1634,"Seattle WA","Salt Lake City UT",117,1180,"Salt Lake City UT","Boston MA",265,382
"Delta Air Lines Inc.",1634,"Seattle WA","Salt Lake City UT",117,1843,"Salt Lake City UT","Boston MA",260,377
"Delta Air Lines Inc.",1750,"Seattle WA","Atlanta GA",320,1066,"Atlanta GA","Boston MA",0,320
"Delta Air Lines Inc.",1770,"Seattle WA","Minneapolis MN",185,808,"Minneapolis MN","Boston MA",173,358
"Delta Air Lines Inc.",1770,"Seattle WA","Minneapolis MN",185,818,"Minneapolis MN","Boston MA",152,337
"Delta Air Lines Inc.",1770,"Seattle WA","Minneapolis MN",185,868,"Minneapolis MN","Boston MA",170,355
"Delta Air Lines Inc.",1770,"Seattle WA","Minneapolis MN",185,2062,"Minneapolis MN","Boston MA",194,379
"Delta Air Lines Inc.",1770,"Seattle WA","Minneapolis MN",185,2549,"Minneapolis MN","Boston MA",173,358
"Delta Air Lines Inc.",1770,"Seattle WA","Minneapolis MN",185,2588,"Minneapolis MN","Boston MA",168,353
"Delta Air Lines Inc.",1781,"Seattle WA","Atlanta GA",289,1066,"Atlanta GA","Boston MA",0,289
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,158,"Detroit MI","Boston MA",119,370
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,188,"Detroit MI","Boston MA",110,361
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,1237,"Detroit MI","Boston MA",109,360
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,1622,"Detroit MI","Boston MA",109,360
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,1822,"Detroit MI","Boston MA",106,357
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,1903,"Detroit MI","Boston MA",106,357
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,2437,"Detroit MI","Boston MA",112,363
"Delta Air Lines Inc.",282,"Seattle WA","Detroit MI",251,2523,"Detroit MI","Boston MA",113,364
"Delta Air Lines Inc.",346,"Seattle WA","Salt Lake City UT",121,1059,"Salt Lake City UT","Boston MA",298,419
"Delta Air Lines Inc.",346,"Seattle WA","Salt Lake City UT",121,1115,"Salt Lake City UT","Boston MA",295,416
"Delta Air Lines Inc.",346,"Seattle WA","Salt Lake City UT",121,1180,"Salt Lake City UT","Boston MA",265,386
"Delta Air Lines Inc.",346,"Seattle WA","Salt Lake City UT",121,1843,"Salt Lake City UT","Boston MA",260,381
"Delta Air Lines Inc.",2308,"Seattle WA","Minneapolis MN",185,808,"Minneapolis MN","Boston MA",173,358
"Delta Air Lines Inc.",2308,"Seattle WA","Minneapolis MN",185,818,"Minneapolis MN","Boston MA",152,337
"Delta Air Lines Inc.",2308,"Seattle WA","Minneapolis MN",185,868,"Minneapolis MN","Boston MA",170,355
"Delta Air Lines Inc.",2308,"Seattle WA","Minneapolis MN",185,2062,"Minneapolis MN","Boston MA",194,379
"Delta Air Lines Inc.",2308,"Seattle WA","Minneapolis MN",185,2549,"Minneapolis MN","Boston MA",173,358
"Delta Air Lines Inc.",2308,"Seattle WA","Minneapolis MN",185,2588,"Minneapolis MN","Boston MA",168,353
"Delta Air Lines Inc.",2314,"Seattle WA","Minneapolis MN",188,808,"Minneapolis MN","Boston MA",173,361
"Delta Air Lines Inc.",2314,"Seattle WA","Minneapolis MN",188,818,"Minneapolis MN","Boston MA",152,340
"Delta Air Lines Inc.",2314,"Seattle WA","Minneapolis MN",188,868,"Minneapolis MN","Boston MA",170,358
"Delta Air Lines Inc.",2314,"Seattle WA","Minneapolis MN",188,2062,"Minneapolis MN","Boston MA",194,382
"Delta Air Lines Inc.",2314,"Seattle WA","Minneapolis MN",188,2549,"Minneapolis MN","Boston MA",173,361
"Delta Air Lines Inc.",2314,"Seattle WA","Minneapolis MN",188,2588,"Minneapolis MN","Boston MA",168,356
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,158,"Detroit MI","Boston MA",119,363
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,188,"Detroit MI","Boston MA",110,354
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,1237,"Detroit MI","Boston MA",109,353
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,1622,"Detroit MI","Boston MA",109,353
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,1822,"Detroit MI","Boston MA",106,350
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,1903,"Detroit MI","Boston MA",106,350
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,2437,"Detroit MI","Boston MA",112,356
"Delta Air Lines Inc.",815,"Seattle WA","Detroit MI",244,2523,"Detroit MI","Boston MA",113,357
"Delta Air Lines Inc.",877,"Seattle WA","Salt Lake City UT",111,1059,"Salt Lake City UT","Boston MA",298,409
"Delta Air Lines Inc.",877,"Seattle WA","Salt Lake City UT",111,1115,"Salt Lake City UT","Boston MA",295,406
"Delta Air Lines Inc.",877,"Seattle WA","Salt Lake City UT",111,1180,"Salt Lake City UT","Boston MA",265,376
"Delta Air Lines Inc.",877,"Seattle WA","Salt Lake City UT",111,1843,"Salt Lake City UT","Boston MA",260,371
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,350,"Atlanta GA","Boston MA",147,414
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,800,"Atlanta GA","Boston MA",150,417
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,848,"Atlanta GA","Boston MA",149,416
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,1066,"Atlanta GA","Boston MA",0,267
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,1400,"Atlanta GA","Boston MA",151,418
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,1847,"Atlanta GA","Boston MA",143,410
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,1880,"Atlanta GA","Boston MA",148,415
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,2100,"Atlanta GA","Boston MA",147,414
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,2102,"Atlanta GA","Boston MA",147,414
"Delta Air Lines Inc.",968,"Seattle WA","Atlanta GA",267,2467,"Atlanta GA","Boston MA",143,410
"Delta Air Lines Inc.",1056,"Seattle WA","Cincinnati OH",244,63,"Cincinnati OH","Boston MA",131,375
"Delta Air Lines Inc.",1056,"Seattle WA","Cincinnati OH",244,627,"Cincinnati OH","Boston MA",142,386
"Delta Air Lines Inc.",1056,"Seattle WA","Cincinnati OH",244,630,"Cincinnati OH","Boston MA",129,373
"Delta Air Lines Inc.",1056,"Seattle WA","Cincinnati OH",244,810,"Cincinnati OH","Boston MA",135,379
"Delta Air Lines Inc.",1056,"Seattle WA","Cincinnati OH",244,1078,"Cincinnati OH","Boston MA",129,373
"Delta Air Lines Inc.",1056,"Seattle WA","Cincinnati OH",244,1098,"Cincinnati OH","Boston MA",132,376
"Delta Air Lines Inc.",1100,"Seattle WA","Salt Lake City UT",108,1059,"Salt Lake City UT","Boston MA",298,406
"Delta Air Lines Inc.",1100,"Seattle WA","Salt Lake City UT",108,1115,"Salt Lake City UT","Boston MA",295,403
"Delta Air Lines Inc.",1100,"Seattle WA","Salt Lake City UT",108,1180,"Salt Lake City UT","Boston MA",265,373
"Delta Air Lines Inc.",1100,"Seattle WA","Salt Lake City UT",108,1843,"Salt Lake City UT","Boston MA",260,368
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,437,"New York NY","Boston MA",80,398
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1906,"New York NY","Boston MA",64,382
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1908,"New York NY","Boston MA",55,373
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1910,"New York NY","Boston MA",69,387
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1912,"New York NY","Boston MA",70,388
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1914,"New York NY","Boston MA",78,396
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1916,"New York NY","Boston MA",70,388
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1918,"New York NY","Boston MA",61,379
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1920,"New York NY","Boston MA",70,388
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1922,"New York NY","Boston MA",61,379
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1924,"New York NY","Boston MA",60,378
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1926,"New York NY","Boston MA",71,389
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1928,"New York NY","Boston MA",64,382
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1930,"New York NY","Boston MA",73,391
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1932,"New York NY","Boston MA",67,385
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1934,"New York NY","Boston MA",64,382
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,1936,"New York NY","Boston MA",54,372
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2311,"New York NY","Boston MA",77,395
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2666,"New York NY","Boston MA",73,391
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2669,"New York NY","Boston MA",66,384
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2673,"New York NY","Boston MA",74,392
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2674,"New York NY","Boston MA",81,399
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2675,"New York NY","Boston MA",85,403
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2676,"New York NY","Boston MA",59,377
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2677,"New York NY","Boston MA",64,382
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2692,"New York NY","Boston MA",100,418
"Delta Air Lines Inc.",1109,"Seattle WA","New York NY",318,2788,"New York NY","Boston MA",98,416
"Delta Air Lines Inc.",1140,"Seattle WA","Minneapolis MN",183,808,"Minneapolis MN","Boston MA",173,356
"Delta Air Lines Inc.",1140,"Seattle WA","Minneapolis MN",183,818,"Minneapolis MN","Boston MA",152,335
"Delta Air Lines Inc.",1140,"Seattle WA","Minneapolis MN",183,868,"Minneapolis MN","Boston MA",170,353
"Delta Air Lines Inc.",1140,"Seattle WA","Minneapolis MN",183,2062,"Minneapolis MN","Boston MA",194,377
"Delta Air Lines Inc.",1140,"Seattle WA","Minneapolis MN",183,2549,"Minneapolis MN","Boston MA",173,356
"Delta Air Lines Inc.",1140,"Seattle WA","Minneapolis MN",183,2588,"Minneapolis MN","Boston MA",168,351
"Delta Air Lines Inc.",1142,"Seattle WA","Atlanta GA",281,1066,"Atlanta GA","Boston MA",0,281
"Delta Air Lines Inc.",1291,"Seattle WA","Atlanta GA",274,1066,"Atlanta GA","Boston MA",0,274
"Delta Air Lines Inc.",1291,"Seattle WA","Atlanta GA",274,1847,"Atlanta GA","Boston MA",143,417
"Delta Air Lines Inc.",1291,"Seattle WA","Atlanta GA",274,2467,"Atlanta GA","Boston MA",143,417
"Delta Air Lines Inc.",1306,"Seattle WA","Atlanta GA",277,1066,"Atlanta GA","Boston MA",0,277
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,158,"Detroit MI","Boston MA",119,367
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,188,"Detroit MI","Boston MA",110,358
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,1237,"Detroit MI","Boston MA",109,357
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,1622,"Detroit MI","Boston MA",109,357
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,1822,"Detroit MI","Boston MA",106,354
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,1903,"Detroit MI","Boston MA",106,354
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,2437,"Detroit MI","Boston MA",112,360
"Delta Air Lines Inc.",1444,"Seattle WA","Detroit MI",248,2523,"Detroit MI","Boston MA",113,361
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,158,"Detroit MI","Boston MA",119,358
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,188,"Detroit MI","Boston MA",110,349
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,1237,"Detroit MI","Boston MA",109,348
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,1622,"Detroit MI","Boston MA",109,348
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,1822,"Detroit MI","Boston MA",106,345
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,1903,"Detroit MI","Boston MA",106,345
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,2437,"Detroit MI","Boston MA",112,351
"Delta Air Lines Inc.",2424,"Seattle WA","Detroit MI",239,2523,"Detroit MI","Boston MA",113,352
"Delta Air Lines Inc.",2440,"Seattle WA","Minneapolis MN",179,808,"Minneapolis MN","Boston MA",173,352
"Delta Air Lines Inc.",2440,"Seattle WA","Minneapolis MN",179,818,"Minneapolis MN","Boston MA",152,331
"Delta Air Lines Inc.",2440,"Seattle WA","Minneapolis MN",179,868,"Minneapolis MN","Boston MA",170,349
"Delta Air Lines Inc.",2440,"Seattle WA","Minneapolis MN",179,2062,"Minneapolis MN","Boston MA",194,373
"Delta Air Lines Inc.",2440,"Seattle WA","Minneapolis MN",179,2549,"Minneapolis MN","Boston MA",173,352
"Delta Air Lines Inc.",2440,"Seattle WA","Minneapolis MN",179,2588,"Minneapolis MN","Boston MA",168,347
"Delta Air Lines Inc.",2547,"Seattle WA","Minneapolis MN",181,808,"Minneapolis MN","Boston MA",173,354
"Delta Air Lines Inc.",2547,"Seattle WA","Minneapolis MN",181,818,"Minneapolis MN","Boston MA",152,333
"Delta Air Lines Inc.",2547,"Seattle WA","Minneapolis MN",181,868,"Minneapolis MN","Boston MA",170,351
"Delta Air Lines Inc.",2547,"Seattle WA","Minneapolis MN",181,2062,"Minneapolis MN","Boston MA",194,375
"Delta Air Lines Inc.",2547,"Seattle WA","Minneapolis MN",181,2549,"Minneapolis MN","Boston MA",173,354
"Delta Air Lines Inc.",2547,"Seattle WA","Minneapolis MN",181,2588,"Minneapolis MN","Boston MA",168,349
"Delta Air Lines Inc.",2799,"Seattle WA","Salt Lake City UT",118,1059,"Salt Lake City UT","Boston MA",298,416
"Delta Air Lines Inc.",2799,"Seattle WA","Salt Lake City UT",118,1115,"Salt Lake City UT","Boston MA",295,413
"Delta Air Lines Inc.",2799,"Seattle WA","Salt Lake City UT",118,1180,"Salt Lake City UT","Boston MA",265,383
"Delta Air Lines Inc.",2799,"Seattle WA","Salt Lake City UT",118,1843,"Salt Lake City UT","Boston MA",260,378
"Delta Air Lines Inc.",2150,"Seattle WA","Salt Lake City UT",117,1059,"Salt Lake City UT","Boston MA",298,415
"Delta Air Lines Inc.",2150,"Seattle WA","Salt Lake City UT",117,1115,"Salt Lake City UT","Boston MA",295,412
"Delta Air Lines Inc.",2150,"Seattle WA","Salt Lake City UT",117,1180,"Salt Lake City UT","Boston MA",265,382
"Delta Air Lines Inc.",2150,"Seattle WA","Salt Lake City UT",117,1843,"Salt Lake City UT","Boston MA",260,377
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,804,"Washington DC","Boston MA",84,365
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,860,"Washington DC","Boston MA",84,365
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,980,"Washington DC","Boston MA",0,281
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,1133,"Washington DC","Boston MA",96,377
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,1187,"Washington DC","Boston MA",88,369
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,1562,"Washington DC","Boston MA",103,384
"United Air Lines Inc.",260,"Seattle WA","Washington DC",281,1753,"Washington DC","Boston MA",110,391
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,354,"Denver CO","Boston MA",249,408
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,568,"Denver CO","Boston MA",221,380
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,584,"Denver CO","Boston MA",231,390
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,677,"Denver CO","Boston MA",226,385
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,726,"Denver CO","Boston MA",219,378
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,744,"Denver CO","Boston MA",224,383
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,1216,"Denver CO","Boston MA",238,397
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,1568,"Denver CO","Boston MA",247,406
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,1907,"Denver CO","Boston MA",252,411
"United Air Lines Inc.",1932,"Seattle WA","Denver CO",159,1961,"Denver CO","Boston MA",236,395
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,448,"Chicago IL","Boston MA",129,346
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,524,"Chicago IL","Boston MA",138,355
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,526,"Chicago IL","Boston MA",127,344
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,528,"Chicago IL","Boston MA",131,348
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,532,"Chicago IL","Boston MA",136,353
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,534,"Chicago IL","Boston MA",166,383
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,536,"Chicago IL","Boston MA",173,390
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,538,"Chicago IL","Boston MA",0,217
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,540,"Chicago IL","Boston MA",164,381
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,542,"Chicago IL","Boston MA",157,374
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,544,"Chicago IL","Boston MA",139,356
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,582,"Chicago IL","Boston MA",128,345
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,688,"Chicago IL","Boston MA",147,364
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,882,"Chicago IL","Boston MA",148,365
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,1253,"Chicago IL","Boston MA",133,350
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,1262,"Chicago IL","Boston MA",150,367
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,1534,"Chicago IL","Boston MA",134,351
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,1574,"Chicago IL","Boston MA",140,357
"United Air Lines Inc.",1949,"Seattle WA","Chicago IL",217,1705,"Chicago IL","Boston MA",127,344
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,448,"Chicago IL","Boston MA",129,350
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,524,"Chicago IL","Boston MA",138,359
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,526,"Chicago IL","Boston MA",127,348
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,528,"Chicago IL","Boston MA",131,352
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,532,"Chicago IL","Boston MA",136,357
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,534,"Chicago IL","Boston MA",166,387
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,536,"Chicago IL","Boston MA",173,394
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,538,"Chicago IL","Boston MA",0,221
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,540,"Chicago IL","Boston MA",164,385
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,542,"Chicago IL","Boston MA",157,378
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,544,"Chicago IL","Boston MA",139,360
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,582,"Chicago IL","Boston MA",128,349
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,688,"Chicago IL","Boston MA",147,368
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,882,"Chicago IL","Boston MA",148,369
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,1253,"Chicago IL","Boston MA",133,354
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,1262,"Chicago IL","Boston MA",150,371
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,1534,"Chicago IL","Boston MA",134,355
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,1574,"Chicago IL","Boston MA",140,361
"United Air Lines Inc.",1977,"Seattle WA","Chicago IL",221,1705,"Chicago IL","Boston MA",127,348
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,170,"San Francisco CA","Boston MA",354,354
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,172,"San Francisco CA","Boston MA",334,334
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,174,"San Francisco CA","Boston MA",359,359
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,176,"San Francisco CA","Boston MA",346,346
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,178,"San Francisco CA","Boston MA",337,337
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,217,"San Francisco CA","Boston MA",337,337
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,325,"San Francisco CA","Boston MA",351,351
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,743,"San Francisco CA","Boston MA",336,336
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,788,"San Francisco CA","Boston MA",355,355
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,1073,"San Francisco CA","Boston MA",351,351
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,1635,"San Francisco CA","Boston MA",324,324
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,1731,"San Francisco CA","Boston MA",335,335
"United Air Lines Inc.",1073,"Seattle WA","San Francisco CA",0,1946,"San Francisco CA","Boston MA",338,338
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,204,"Newark NJ","Boston MA",97,388
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,207,"Newark NJ","Boston MA",69,360
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,348,"Newark NJ","Boston MA",64,355
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,652,"Newark NJ","Boston MA",98,389
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,994,"Newark NJ","Boston MA",80,371
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,1142,"Newark NJ","Boston MA",0,291
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,1666,"Newark NJ","Boston MA",78,369
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,1742,"Newark NJ","Boston MA",74,365
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,1775,"Newark NJ","Boston MA",75,366
"United Air Lines Inc.",1082,"Seattle WA","Newark NJ",291,1930,"Newark NJ","Boston MA",77,368
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,354,"Denver CO","Boston MA",249,403
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,568,"Denver CO","Boston MA",221,375
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,584,"Denver CO","Boston MA",231,385
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,677,"Denver CO","Boston MA",226,380
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,726,"Denver CO","Boston MA",219,373
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,744,"Denver CO","Boston MA",224,378
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,1216,"Denver CO","Boston MA",238,392
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,1568,"Denver CO","Boston MA",247,401
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,1907,"Denver CO","Boston MA",252,406
"United Air Lines Inc.",1084,"Seattle WA","Denver CO",154,1961,"Denver CO","Boston MA",236,390
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,204,"Newark NJ","Boston MA",97,385
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,207,"Newark NJ","Boston MA",69,357
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,348,"Newark NJ","Boston MA",64,352
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,652,"Newark NJ","Boston MA",98,386
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,994,"Newark NJ","Boston MA",80,368
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,1142,"Newark NJ","Boston MA",0,288
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,1666,"Newark NJ","Boston MA",78,366
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,1742,"Newark NJ","Boston MA",74,362
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,1775,"Newark NJ","Boston MA",75,363
"United Air Lines Inc.",1108,"Seattle WA","Newark NJ",288,1930,"Newark NJ","Boston MA",77,365
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,448,"Chicago IL","Boston MA",129,359
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,524,"Chicago IL","Boston MA",138,368
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,526,"Chicago IL","Boston MA",127,357
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,528,"Chicago IL","Boston MA",131,361
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,532,"Chicago IL","Boston MA",136,366
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,534,"Chicago IL","Boston MA",166,396
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,536,"Chicago IL","Boston MA",173,403
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,538,"Chicago IL","Boston MA",0,230
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,540,"Chicago IL","Boston MA",164,394
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,542,"Chicago IL","Boston MA",157,387
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,544,"Chicago IL","Boston MA",139,369
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,582,"Chicago IL","Boston MA",128,358
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,688,"Chicago IL","Boston MA",147,377
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,882,"Chicago IL","Boston MA",148,378
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,1253,"Chicago IL","Boston MA",133,363
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,1262,"Chicago IL","Boston MA",150,380
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,1534,"Chicago IL","Boston MA",134,364
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,1574,"Chicago IL","Boston MA",140,370
"United Air Lines Inc.",1262,"Seattle WA","Chicago IL",230,1705,"Chicago IL","Boston MA",127,357
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,448,"Chicago IL","Boston MA",129,362
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,524,"Chicago IL","Boston MA",138,371
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,526,"Chicago IL","Boston MA",127,360
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,528,"Chicago IL","Boston MA",131,364
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,532,"Chicago IL","Boston MA",136,369
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,534,"Chicago IL","Boston MA",166,399
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,536,"Chicago IL","Boston MA",173,406
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,538,"Chicago IL","Boston MA",0,233
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,540,"Chicago IL","Boston MA",164,397
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,542,"Chicago IL","Boston MA",157,390
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,544,"Chicago IL","Boston MA",139,372
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,582,"Chicago IL","Boston MA",128,361
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,688,"Chicago IL","Boston MA",147,380
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,882,"Chicago IL","Boston MA",148,381
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,1253,"Chicago IL","Boston MA",133,366
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,1262,"Chicago IL","Boston MA",150,383
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,1534,"Chicago IL","Boston MA",134,367
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,1574,"Chicago IL","Boston MA",140,373
"United Air Lines Inc.",1282,"Seattle WA","Chicago IL",233,1705,"Chicago IL","Boston MA",127,360
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,204,"Newark NJ","Boston MA",97,399
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,207,"Newark NJ","Boston MA",69,371
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,348,"Newark NJ","Boston MA",64,366
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,652,"Newark NJ","Boston MA",98,400
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,994,"Newark NJ","Boston MA",80,382
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,1142,"Newark NJ","Boston MA",0,302
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,1666,"Newark NJ","Boston MA",78,380
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,1742,"Newark NJ","Boston MA",74,376
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,1775,"Newark NJ","Boston MA",75,377
"United Air Lines Inc.",1463,"Seattle WA","Newark NJ",302,1930,"Newark NJ","Boston MA",77,379
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,354,"Denver CO","Boston MA",249,399
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,568,"Denver CO","Boston MA",221,371
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,584,"Denver CO","Boston MA",231,381
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,677,"Denver CO","Boston MA",226,376
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,726,"Denver CO","Boston MA",219,369
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,744,"Denver CO","Boston MA",224,374
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,1216,"Denver CO","Boston MA",238,388
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,1568,"Denver CO","Boston MA",247,397
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,1907,"Denver CO","Boston MA",252,402
"United Air Lines Inc.",1526,"Seattle WA","Denver CO",150,1961,"Denver CO","Boston MA",236,386
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,354,"Denver CO","Boston MA",249,408
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,568,"Denver CO","Boston MA",221,380
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,584,"Denver CO","Boston MA",231,390
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,677,"Denver CO","Boston MA",226,385
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,726,"Denver CO","Boston MA",219,378
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,744,"Denver CO","Boston MA",224,383
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,1216,"Denver CO","Boston MA",238,397
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,1568,"Denver CO","Boston MA",247,406
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,1907,"Denver CO","Boston MA",252,411
"United Air Lines Inc.",1568,"Seattle WA","Denver CO",159,1961,"Denver CO","Boston MA",236,395
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,804,"Washington DC","Boston MA",84,372
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,860,"Washington DC","Boston MA",84,372
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,980,"Washington DC","Boston MA",0,288
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,1133,"Washington DC","Boston MA",96,384
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,1187,"Washington DC","Boston MA",88,376
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,1562,"Washington DC","Boston MA",103,391
"United Air Lines Inc.",1594,"Seattle WA","Washington DC",288,1753,"Washington DC","Boston MA",110,398
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,204,"Newark NJ","Boston MA",97,391
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,207,"Newark NJ","Boston MA",69,363
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,348,"Newark NJ","Boston MA",64,358
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,652,"Newark NJ","Boston MA",98,392
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,994,"Newark NJ","Boston MA",80,374
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,1142,"Newark NJ","Boston MA",0,294
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,1666,"Newark NJ","Boston MA",78,372
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,1742,"Newark NJ","Boston MA",74,368
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,1775,"Newark NJ","Boston MA",75,369
"United Air Lines Inc.",1695,"Seattle WA","Newark NJ",294,1930,"Newark NJ","Boston MA",77,371
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,804,"Washington DC","Boston MA",84,369
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,860,"Washington DC","Boston MA",84,369
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,980,"Washington DC","Boston MA",0,285
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,1133,"Washington DC","Boston MA",96,381
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,1187,"Washington DC","Boston MA",88,373
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,1562,"Washington DC","Boston MA",103,388
"United Air Lines Inc.",1744,"Seattle WA","Washington DC",285,1753,"Washington DC","Boston MA",110,395
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,354,"Denver CO","Boston MA",249,399
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,568,"Denver CO","Boston MA",221,371
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,584,"Denver CO","Boston MA",231,381
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,677,"Denver CO","Boston MA",226,376
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,726,"Denver CO","Boston MA",219,369
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,744,"Denver CO","Boston MA",224,374
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,1216,"Denver CO","Boston MA",238,388
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,1568,"Denver CO","Boston MA",247,397
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,1907,"Denver CO","Boston MA",252,402
"United Air Lines Inc.",1771,"Seattle WA","Denver CO",150,1961,"Denver CO","Boston MA",236,386
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,448,"Chicago IL","Boston MA",129,356
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,524,"Chicago IL","Boston MA",138,365
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,526,"Chicago IL","Boston MA",127,354
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,528,"Chicago IL","Boston MA",131,358
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,532,"Chicago IL","Boston MA",136,363
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,534,"Chicago IL","Boston MA",166,393
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,536,"Chicago IL","Boston MA",173,400
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,538,"Chicago IL","Boston MA",0,227
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,540,"Chicago IL","Boston MA",164,391
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,542,"Chicago IL","Boston MA",157,384
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,544,"Chicago IL","Boston MA",139,366
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,582,"Chicago IL","Boston MA",128,355
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,688,"Chicago IL","Boston MA",147,374
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,882,"Chicago IL","Boston MA",148,375
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,1253,"Chicago IL","Boston MA",133,360
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,1262,"Chicago IL","Boston MA",150,377
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,1534,"Chicago IL","Boston MA",134,361
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,1574,"Chicago IL","Boston MA",140,367
"United Air Lines Inc.",1905,"Seattle WA","Chicago IL",227,1705,"Chicago IL","Boston MA",127,354
"Southwest Airlines Co.",3759,"Seattle WA","Nashville TN",262,3852,"Nashville TN","Boston MA",149,411
"Southwest Airlines Co.",920,"Seattle WA","Baltimore MD",312,469,"Baltimore MD","Boston MA",79,391
"Southwest Airlines Co.",920,"Seattle WA","Baltimore MD",312,1267,"Baltimore MD","Boston MA",102,414
"Southwest Airlines Co.",920,"Seattle WA","Baltimore MD",312,3384,"Baltimore MD","Boston MA",79,391
"Southwest Airlines Co.",920,"Seattle WA","Baltimore MD",312,4004,"Baltimore MD","Boston MA",86,398
"Southwest Airlines Co.",920,"Seattle WA","Baltimore MD",312,5699,"Baltimore MD","Boston MA",93,405
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,469,"Baltimore MD","Boston MA",79,372
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,665,"Baltimore MD","Boston MA",122,415
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,987,"Baltimore MD","Boston MA",110,403
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,1267,"Baltimore MD","Boston MA",102,395
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,3384,"Baltimore MD","Boston MA",79,372
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,4004,"Baltimore MD","Boston MA",86,379
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,4367,"Baltimore MD","Boston MA",117,410
"Southwest Airlines Co.",2615,"Seattle WA","Baltimore MD",293,5699,"Baltimore MD","Boston MA",93,386
"Southwest Airlines Co.",478,"Seattle WA","Denver CO",155,443,"Denver CO","Boston MA",253,408
"Southwest Airlines Co.",478,"Seattle WA","Denver CO",155,2791,"Denver CO","Boston MA",232,387
"Southwest Airlines Co.",478,"Seattle WA","Denver CO",155,4493,"Denver CO","Boston MA",250,405
"Southwest Airlines Co.",929,"Seattle WA","Denver CO",151,443,"Denver CO","Boston MA",253,404
"Southwest Airlines Co.",929,"Seattle WA","Denver CO",151,2791,"Denver CO","Boston MA",232,383
"Southwest Airlines Co.",929,"Seattle WA","Denver CO",151,4493,"Denver CO","Boston MA",250,401
"Southwest Airlines Co.",1181,"Seattle WA","Denver CO",142,443,"Denver CO","Boston MA",253,395
"Southwest Airlines Co.",1181,"Seattle WA","Denver CO",142,2791,"Denver CO","Boston MA",232,374
"Southwest Airlines Co.",1181,"Seattle WA","Denver CO",142,4493,"Denver CO","Boston MA",250,392
"Southwest Airlines Co.",2882,"Seattle WA","Denver CO",149,443,"Denver CO","Boston MA",253,402
"Southwest Airlines Co.",2882,"Seattle WA","Denver CO",149,2791,"Denver CO","Boston MA",232,381
"Southwest Airlines Co.",2882,"Seattle WA","Denver CO",149,4493,"Denver CO","Boston MA",250,399
"Southwest Airlines Co.",3927,"Seattle WA","Denver CO",151,443,"Denver CO","Boston MA",253,404
"Southwest Airlines Co.",3927,"Seattle WA","Denver CO",151,2791,"Denver CO","Boston MA",232,383
"Southwest Airlines Co.",3927,"Seattle WA","Denver CO",151,4493,"Denver CO","Boston MA",250,401
"Southwest Airlines Co.",1196,"Seattle WA","Kansas City MO",199,5,"Kansas City MO","Boston MA",182,381
"Southwest Airlines Co.",1196,"Seattle WA","Kansas City MO",199,2425,"Kansas City MO","Boston MA",167,366
"Southwest Airlines Co.",1116,"Seattle WA","Chicago IL",222,277,"Chicago IL","Boston MA",142,364
"Southwest Airlines Co.",1116,"Seattle WA","Chicago IL",222,1406,"Chicago IL","Boston MA",145,367
"Southwest Airlines Co.",1116,"Seattle WA","Chicago IL",222,2960,"Chicago IL","Boston MA",141,363
"Southwest Airlines Co.",1116,"Seattle WA","Chicago IL",222,3299,"Chicago IL","Boston MA",125,347
"Southwest Airlines Co.",1116,"Seattle WA","Chicago IL",222,4821,"Chicago IL","Boston MA",131,353
"Southwest Airlines Co.",1116,"Seattle WA","Chicago IL",222,5366,"Chicago IL","Boston MA",148,370
"Southwest Airlines Co.",3060,"Seattle WA","Chicago IL",222,277,"Chicago IL","Boston MA",142,364
"Southwest Airlines Co.",3060,"Seattle WA","Chicago IL",222,1406,"Chicago IL","Boston MA",145,367
"Southwest Airlines Co.",3060,"Seattle WA","Chicago IL",222,2960,"Chicago IL","Boston MA",141,363
"Southwest Airlines Co.",3060,"Seattle WA","Chicago IL",222,3299,"Chicago IL","Boston MA",125,347
"Southwest Airlines Co.",3060,"Seattle WA","Chicago IL",222,4821,"Chicago IL","Boston MA",131,353
"Southwest Airlines Co.",3060,"Seattle WA","Chicago IL",222,5366,"Chicago IL","Boston MA",148,370
"Southwest Airlines Co.",3951,"Seattle WA","Chicago IL",228,277,"Chicago IL","Boston MA",142,370
"Southwest Airlines Co.",3951,"Seattle WA","Chicago IL",228,1406,"Chicago IL","Boston MA",145,373
"Southwest Airlines Co.",3951,"Seattle WA","Chicago IL",228,2960,"Chicago IL","Boston MA",141,369
"Southwest Airlines Co.",3951,"Seattle WA","Chicago IL",228,3299,"Chicago IL","Boston MA",125,353
"Southwest Airlines Co.",3951,"Seattle WA","Chicago IL",228,4821,"Chicago IL","Boston MA",131,359
"Southwest Airlines Co.",3951,"Seattle WA","Chicago IL",228,5366,"Chicago IL","Boston MA",148,376
"Southwest Airlines Co.",4375,"Seattle WA","Chicago IL",238,277,"Chicago IL","Boston MA",142,380
"Southwest Airlines Co.",4375,"Seattle WA","Chicago IL",238,1406,"Chicago IL","Boston MA",145,383
"Southwest Airlines Co.",4375,"Seattle WA","Chicago IL",238,2960,"Chicago IL","Boston MA",141,379
"Southwest Airlines Co.",4375,"Seattle WA","Chicago IL",238,3299,"Chicago IL","Boston MA",125,363
"Southwest Airlines Co.",4375,"Seattle WA","Chicago IL",238,4821,"Chicago IL","Boston MA",131,369
"Southwest Airlines Co.",4375,"Seattle WA","Chicago IL",238,5366,"Chicago IL","Boston MA",148,386
"Southwest Airlines Co.",4575,"Seattle WA","Chicago IL",233,277,"Chicago IL","Boston MA",142,375
"Southwest Airlines Co.",4575,"Seattle WA","Chicago IL",233,1406,"Chicago IL","Boston MA",145,378
"Southwest Airlines Co.",4575,"Seattle WA","Chicago IL",233,2960,"Chicago IL","Boston MA",141,374
"Southwest Airlines Co.",4575,"Seattle WA","Chicago IL",233,3299,"Chicago IL","Boston MA",125,358
"Southwest Airlines Co.",4575,"Seattle WA","Chicago IL",233,4821,"Chicago IL","Boston MA",131,364
"Southwest Airlines Co.",4575,"Seattle WA","Chicago IL",233,5366,"Chicago IL","Boston MA",148,381
"Southwest Airlines Co.",3035,"Seattle WA","Milwaukee WI",214,117,"Milwaukee WI","Boston MA",132,346
"Southwest Airlines Co.",3035,"Seattle WA","Milwaukee WI",214,3831,"Milwaukee WI","Boston MA",135,349
"Southwest Airlines Co.",5696,"Seattle WA","Milwaukee WI",211,117,"Milwaukee WI","Boston MA",132,343
"Southwest Airlines Co.",5696,"Seattle WA","Milwaukee WI",211,3831,"Milwaukee WI","Boston MA",135,346
"Southwest Airlines Co.",392,"Seattle WA","St. Louis MO",219,392,"St. Louis MO","Boston MA",152,371
"Southwest Airlines Co.",392,"Seattle WA","St. Louis MO",219,782,"St. Louis MO","Boston MA",158,377
"Southwest Airlines Co.",392,"Seattle WA","St. Louis MO",219,4551,"St. Louis MO","Boston MA",161,380
*/
