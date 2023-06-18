-- @block insert raw data 

INSERT INTO Accessibility (airport, train, bus)
VALUES (17, 8, 2), (47, 25, 8), (53, 11, 15), (22, 19, 5), (85, 16, 11), (55, 29, 21), (5, 4, 3), (19, 7, 2), (33, 22, 11), (41, 17, 2), 
(67, 16, 8), (48, 24, 14), (70, 20, 10), (73, 19, 3), (55, 26, 10), (88, 36, 29), (91, 42, 7), (64, 27, 33), (49, 22, 7), (13, 13, 13);

INSERT INTO Amenities (amenityname)
VALUES ('Pool'), ('Wifi'), ('Kitchen'), ('Free Parking'), ('Jacuzzi'), ('Washing machine'), ('Dryer'), ('Air Conditioning'), ('Floor heating'), ('Self check-in'), 
('Workspace'), ('Garage'), ('Pets allowed'), ('Coffee Machine'), ('Dishwasher'), ('Home Cinema'), ('Massage Chairs'), ('TV'), ('Rental Car'), ('Bikes');

INSERT INTO BuildingType (buildingtypename)
VALUES ('Single-family'), ('Townhouse'), ('Multi-family'), ('Modular home'), ('Bungalow'), ('Ranch home'), ('Apartment'), ('Condo'), ('Co-Op'), ('Tiny home'), 
('Mansion'), ('Designer home'), ('Modern'), ('Villa'), ('Hut'), ('Cottage'), ('Split-level house'), ('Tower'), ('Housebarn'), ('Castle'), 
('Palace'), ('Glamping Tent'), ('House boat');

INSERT INTO Cities (cityname)
VALUES ('Frankfurt'), ('Augsburg'), ('Ludwigshafen am Rhein'), ('Köln'), ('Bonn'), ('Dortmund'), ('Berlin'), ('Langen'), ('Hamburg'), ('Stuttgart'), 
('München'), ('Hagen'), ('Marburg'), ('Heidelberg'), ('Bremen'), ('Dresden'), ('Leipzig'), ('Bielefeld'), ('Wuppertal'), ('Nürnberg'), 
('Essen'), ('Leipzig'), ('Hannover'), ('Duisburg'), ('Düsseldorf');

INSERT INTO Countries (countryname)
VALUES ('Germany'), ('England'), ('Netherlands'), ('Switzerland'), ('Belgium'), ('France'), ('Ireland'), ('Scotland'), ('Poland'), ('Croatia'), 
('Italy'), ('Spain'), ('Portugal'), ('Indonesia'), ('Finland'), ('Norway'), ('Sweden'), ('Denmark'), ('Russia'), ('China');

INSERT INTO Languages (languagename)
VALUES ('German'), ('English'), ('Swedish'), ('Dutch'), ('Polish'), ('French'), ('Portuguese'), ('Mandarin'), ('Cantonese'), ('Tagalog'), 
('Russian'), ('Italian'), ('Spanish'), ('Maroccan'), ('Hindi'), ('Turkish'), ('Korean'), ('Bengali'), ('Vietnamese'), ('Tamil');

INSERT INTO Price (basicprice, january, february, march, april, may, june, july, august, september, october, november, december)
Values (50, -10, -5, 0, 5, 5, 10, 15, 15, 10, 5, 5, 10), (99, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (120, 0, 0, 0, 0, 0, -10, 0, 0, 0, 0, 20, 30), (75, 0, 1, 2, 3, 4, 5, 10, 5, 3, 1, 0, 0), (25, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), 
(76, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (100, 0, 0, 0, 0, 10, 10, 10, 10, 10, 0, 0, 0), (555, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (250, -50, -50, -50, 0, 0, 0, 0, 0, 0, 0, -50, -50), (333, 10, 10, 10, 10, 10, 20, 30, 10, 10, 0, 10, 10), 
(1000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (111, 10, 20, 30, 30, 40, 40, 40, 40, 30, 20, 0, 0), (666, 12, 24, 36, 48, 0, 0, 0, 12, 20, -10, -20, 0), (250, 50, 50, 25, 0, 0, 0, 0, 0, 0, 25, 50, 75), 
(40, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), (80, 0, 0, 0, 0, 0, 0, 10, 10, 0, 0, 0, 0), (150, 0, 0, 0, 0, 25, 30, 0, 0, 0, 10, 20, 30), (100, 0, 0, 0, 10, 20, 30, 30, 30, 20, 0, 0, 0), (200, 0, 0, 0, 50, 100, 100, 50, 50, 0, 0, 0, 0);

INSERT INTO Rooms (bedrooms, bathrooms, singlebeds, doublebeds)
VALUES (1, 1, 1, 0), (1, 1, 0, 1), (3, 1, 2, 2), (2, 3, 2, 0), (12, 4, 12, 0),
(3, 2, 2, 1), (4, 2, 4, 0), (4, 2, 2, 2), (1, 1, 2, 0), (2, 1, 0, 2), 
(16, 8, 8, 8), (10, 3, 5, 5), (2, 1, 2, 1), (5, 5, 5, 0), (5, 3, 2, 3),
(4, 1, 3, 1), (7, 3, 7, 0), (6, 1, 6, 0), (3, 3, 3, 0), (4, 4, 0, 4);

INSERT INTO VacationType (vacationtypename)
VALUES ('Island'), ('Beach'), ('City'), ('Forest'), ('Off-Grid'), ('Mountains'), ('Lake'), ('Camping'), ('Glamping'), ('Countryside'), 
('Downtown'), ('Cave'), ('Skiing'), ('Sailing'), ('Spa'), ('Theme Park'), ('Historical Sites'), ('Vineyard'), ('Riverside'), ('Desert');

INSERT INTO Users (email, firstname, lastname, phonenumber)
VALUES ('a.fischer@gmail.com', 'Anna', 'Fischer', '01751834928'), ('jonathanhorst@outlook.com', 'Jonathan', 'Horst', '01773968554'), ('kosakb@gmail.com', 'Benjamin', 'Kosak', '01723359867'), ('lmschmidt@gmail.com', 'Lena', 'Schmidt', '01781614598'), ('tomspam@gmail.com', 'Thomas', 'Bauer', '01745583946'), 
('iesemuller@gmail.com', 'Luise', 'Müller', '01764090851'), ('webersofia@hotmail.com', 'Sofia', 'Weber', '01745448113'), ('denisejanssen@gmail.com', 'Denise', 'Janssen', '01778331095'), ('falco.klein@live.com', 'Falco', 'Klein', '01719876543'), ('juliabauermeyer@web.de', 'Julia', 'Meyer', '01743329889'),
('c.schneider@outlook.com', 'Christina', 'Schneider', '01738894652'), ('paulwagner@gmail.com', 'Paul', 'Wagner', '01783447385'), ('Hannakeller@gmail.com', 'Hannah', 'Keller', '01747786321'), ('samuel.h@hotmail.com', 'Samuel', 'Hofmann', '01727768520'), ('s.dietrich@gmail.com', 'Sara', 'dietrich', '01741893244'), 
('jonahpiehler@outlook.com', 'Jonah', 'Piehler', '01785590813'), ('skodzik.l@gmail.com', 'Lea', 'Skodzik', '01778294458'), ('chrisroth@live.com', 'Christian', 'Roth', '01728819445'), ('zimmermannelias@outlook.com', 'Elias', 'Zimmermann', '01749987917'), ('a.jung@gmail.com', 'Alina', 'Jung', '01741315980');


-- @block insert into tables with dependabilities

INSERT INTO Profiles (userID, bio)
VALUES (1, 'Hi, I love traveling and renting out my home as airbnb! Check it out and come visit!'), (2, 'Hi there, my name is Jonathan and I enjoy hiking'), (3, ''), (4, 'My first time on this website, looking for cool places to visit!'), (5, ''),
(6, 'Hello there! I own several houses and always make sure they are up to the highest standards of customer satisfaction!'), (7, ''), (8, ''), (9, ''), (10, "Hello, I'm Julia. I'm 23 years old and just bought my first house! I love to share it wiht you!"), 
(11, ''), (12, ''), (13, 'I am a 37 year old mom of 3 and we just love decorating our haunted castle spooky!'), (14, ''), (15, 'Sara here. I travel a lot so airbnb is amazing!'), 
(16, 'Test test'), (17, 'Not sure what to say. Hi everyone!'), (18, 'I am from austria and love the mountains. Make sure to check out my cabin!'), (19, ''), (20, '');

INSERT INTO ProfileImages (profileID, profileimage)
VALUES(1, 'portrait1.jpg'), (2, 'portrait2.jpg'), (3, 'portrait3.jpg'), (4, 'portrait4.jpg'), (5, 'portrait5.jpg'), (6, 'portrait6.jpg'), (7, 'portrait7.jpg'), (8, 'portrait8.jpg'), (9, 'portrait9.jpg'), (10, 'portrait10.jpg'), 
(11, 'portrait11.jpg'), (12, 'portrait12.jpg'), (13, 'portrait13.jpg'), (14, 'portrait14.jpg'), (15, 'portrait15.jpg'), (16, 'portrait16.jpg'), (17, 'portrait17.jpg'), (18, 'portrait18.jpg'), (19, 'portrait19.jpg'), (20, 'portrait20.jpg');

INSERT INTO GuestDetails (userID, creditcard, cvv)
VALUES (1, 2222405343248877, 123), (1, 2222990905257051, 331), (3, 2223007648726984, 499), (4, 2223577120017656, 401), (5, 5105105105105100, 074), 
(6, 5111010030175156, 666), (7, 5185540810000019, 777), (7, 5200828282828210, 911), (7, 5204230080000017, 447), (8, 5204740009900014, 924), 
(9, 5420923878764339, 164), (11, 5455330760000018, 793), (12, 5506900490000436, 782), (13, 5506900490000444, 229), (13, 5506900510000234, 274),
(14, 5506920809243667, 346), (15, 4111111111111111, 584), (17, 371449635398431, 319), (18, 30569309025904, 987), (19, 3530111333300000, 179),
(20, 3566002020360505, 362);

INSERT INTO HostDetails (userID, bankaccount)
VALUES (1, 'DE02120300000000202051'), (2, 'DE02500105170137075030'), (2, 'DE02100500000054540402'), (3, 'DE02300209000106531065'), (4, 'DE02200505501015871393'), 
(5, 'DE02100100100006820101'), (6, 'DE02300606010002474689'), (7, 'DE02600501010002034304'), (8, 'DE02700202700010108669'), (9, 'DE02700100800030876808'),
(10, 'DE02370502990000684712'), (10, 'DE88100900001234567892'), (11, 'DE02701500000000594937'), (12, 'DE026000000001349870'), (13, 'DE021420020010147558'),
(14, 'DE023200000000641605'), (16, 'DE021200000703447144'), (17, 'DE022011100003429660'), (19, 'DE022081500000698597'), (20, 'DE022040400040102634');

INSERT INTO PropertyAddress (countryID, cityID, postalcode, streetname, housenumber)
VALUES (1, 11, '80333', 'Prinz-Ludwig Straße', '6'), (1, 20, '90459', 'Hummelsteiner Weg', '55'), (1, 19, '42119', 'Hospitalstraße', '9'), (1, 15, '28211', 'Schwachhauser Heerstraße', '213'), (1, 18, '33609', 'Am Stadtholz', '23'), 
(1, 6, '44139', 'Hohe Str.', '61A'), (1, 4, '50676', 'Leonhard-Tietz Straße', '1'), (1, 10, '70174', 'Lange Str.', '36'), (1, 3, '67059', 'Bürgermeister-Kutterer-Straße', '36'), (1, 21, '45127', 'Am Waldthausenpark', '2'), 
(1, 22, '04107', 'Grassistraße', '15'), (1, 14, '69124', 'Zentstraße', '15'), (1, 25, '40215', 'Helmholtzstraße', '42'), (1, 16, '01067', 'Waisenhausstraße', '8'), (1, 23, '30159', 'Warmbüchenstraße', '6'), 
(1, 7, '10777', 'Kulmbacher Straße', '9'), (1, 2, '86157', 'Augsburger Str.', '26'), (1, 24, '47057', 'Neudorfer Markt', '22'), (1, 5, '53115', 'Endenicher Allee', '3'), (1, 1, '60325', 'Guiollettstraße', '25');

INSERT INTO Properties (addressID, roomsID, accessibilityID, userID, priceID, propertyname, propertydescription, size)
VALUES (1, 2, 4, 1, 1, 'small cosy house', '', 42), (2, 1, 3, 2, 2, 'cute 2 room apartment', '', 60), (3, 5, 1, 2, 3, 'beautiful home, pet friendly', '', 85), (4, 3, 2, 3, 4, 'small but modern apartment', '', 16), (5, 4, 5, 4, 5, 'room within single family home', '', 12), 
(6, 6, 6, 5, 6, 'decent sized city home', '', 80), (7, 7, 7, 6, 7, 'inner city flat', '', 65), (8, 8, 8, 7, 8, 'luxurious mansion close to beach', '', 180), (9, 9, 9, 8, 9, 'big modern villa with outdoor pool', '', 120), (10, 10, 10, 9, 10, 'beautiful 8 room holidayhouse by the beach', '', 200), 
(11, 11, 11, 10, 11, 'luxurious mountain cabin with breathtaking view', '', 380), (12, 12, 12, 10, 12, 'oldschool villa off the grid', '', 195), (13, 13, 13, 11, 13, 'elefant house', '', 55), (14, 14, 14, 12, 14, 'our lovely home', '', 123), (15, 15, 15, 13, 15, 'super fresh renovated rooms', '', 45), 
(16, 16, 16, 14, 16, 'my casa es tu casa', '', 49), (17, 17, 17, 16, 17, 'loghouse in rustic style', '', 113), (18, 18, 18, 17, 18, 'relaxation house', '', 71), (19, 19, 19, 19, 19, 'small but fancy apartment', '', 56), (20, 20, 20, 20, 20, 'super popular holiday house', '', 127);

INSERT INTO PropertyImages (propertyID, propertyimage)
VALUES (1, 'property1.jpg'), (2, 'property2.jpg'), (3, 'property3.jpg'), (4, 'property4.jpg'), (5, 'property5.jpg'), (6, 'property6.jpg'), (7, 'property7.jpg'), (8, 'property8.jpg'), (9, 'property9.jpg'), (10, 'property10.jpg'), 
(11, 'property11.jpg'), (12, 'property12.jpg'), (13, 'property13.jpg'), (14, 'property14.jpg'), (15, 'property15.jpg'), (16, 'property16.jpg'), (17, 'property17.jpg'), (18, 'property18.jpg'), (19, 'property19.jpg'), (20, 'property20.jpg');

INSERT INTO Bookings (userID, propertyID, startdate, enddate)
VALUES (1, 4, STR_TO_DATE('2023-02-01', '%Y-%m-%d'), STR_TO_DATE('2023-02-04', '%Y-%m-%d')), (1, 4, STR_TO_DATE('2023-02-21', '%Y-%m-%d'), STR_TO_DATE('2023-02-23', '%Y-%m-%d')), (3, 1, STR_TO_DATE('2023-05-07', '%Y-%m-%d'), STR_TO_DATE('2023-05-09', '%Y-%m-%d')), (5, 17, STR_TO_DATE('2023-01-01', '%Y-%m-%d'), STR_TO_DATE('2023-01-06', '%Y-%m-%d')), 
(4, 12, STR_TO_DATE('2023-04-10', '%Y-%m-%d'), STR_TO_DATE('2023-04-12', '%Y-%m-%d')), (6, 11, STR_TO_DATE('2022-07-19', '%Y-%m-%d'), STR_TO_DATE('2022-07-23', '%Y-%m-%d')), (7, 5, STR_TO_DATE('2023-02-18', '%Y-%m-%d'), STR_TO_DATE('2023-02-19', '%Y-%m-%d')), (8, 8, STR_TO_DATE('2023-03-01', '%Y-%m-%d'), STR_TO_DATE('2023-03-03', '%Y-%m-%d')), 
(7, 13, STR_TO_DATE('2023-03-13', '%Y-%m-%d'), STR_TO_DATE('2023-03-14', '%Y-%m-%d')), (11, 2, STR_TO_DATE('2022-11-18', '%Y-%m-%d'), STR_TO_DATE('2022-11-19', '%Y-%m-%d')), (12, 20, STR_TO_DATE('2023-02-01', '%Y-%m-%d'), STR_TO_DATE('2023-02-03', '%Y-%m-%d')), (12, 6, STR_TO_DATE('2023-05-02', '%Y-%m-%d'), STR_TO_DATE('2023-05-04', '%Y-%m-%d')), 
(1, 17, STR_TO_DATE('2023-01-15', '%Y-%m-%d'), STR_TO_DATE('2023-01-17', '%Y-%m-%d')), (1, 18, STR_TO_DATE('2023-02-27', '%Y-%m-%d'), STR_TO_DATE('2023-03-02', '%Y-%m-%d')), (17, 14, STR_TO_DATE('2022-10-14', '%Y-%m-%d'), STR_TO_DATE('2023-10-17', '%Y-%m-%d')), (15, 8, STR_TO_DATE('2023-05-18', '%Y-%m-%d'), STR_TO_DATE('2023-05-20', '%Y-%m-%d')), 
(17, 18, STR_TO_DATE('2023-04-23', '%Y-%m-%d'), STR_TO_DATE('2023-04-24', '%Y-%m-%d')), (18, 16, STR_TO_DATE('2023-02-07', '%Y-%m-%d'), STR_TO_DATE('2023-02-09', '%Y-%m-%d')), (19, 3, STR_TO_DATE('2023-03-03', '%Y-%m-%d'), STR_TO_DATE('2023-03-06', '%Y-%m-%d')), (20, 9, STR_TO_DATE('2023-05-05', '%Y-%m-%d'), STR_TO_DATE('2023-05-08', '%Y-%m-%d'));

INSERT INTO PropertyReviews (bookingID, propertyrating, propertycomment)
VALUES (1, 5, 'super clean, everything as promised, would love to come visit again!'), (2, 3, ''), (3, 5, ''), (4, 4, ''), (5, 3, ''), 
(6, 4, ''), (7, 5, ''), (8, 2, ''), (9, 5, ''), (10, 4, ''), 
(11, 5, ''), (12, 3, ''), (13, 2, ''), (14, 5, ''), (15, 4, ''), 
(16, 5, ''), (17, 3, ''), (18, 4, ''), (19, 5, ''), (20, 4, '');

INSERT INTO GuestReviews (bookingID, guestrating, guestcomment)
VALUES (1, 4, 'quiet guests, left the property in decent condition'), (2, 5, ''), (3, 4, ''), (4, 3, ''), (5, 4, ''), 
(6, 5, ''), (7, 4, ''), (8, 5, ''), (9, 5, ''), (10, 1, ''), 
(11, 4, ''), (12, 5, ''), (13, 2, 'very messy guest, cant give more than 2
stars'), (14, 4, ''), (15, 4, ''),
(16, 5, ''), (17, 5, ''), (18, 4, ''), (19, 2, ''), (20, 3, '');

INSERT INTO MessageRequests (bookingID, requestsent, requesttext)
VALUES (1, STR_TO_DATE('2023-02-01 10:32:23', '%Y-%m-%d %H:%i:%s'), 'just a quick question, what number are you again?'), (1, STR_TO_DATE('2023-02-01 10:34:26', '%Y-%m-%d %H:%i:%s'), 'hello?'), (1, STR_TO_DATE('2023-02-01 10:34:55', '%Y-%m-%d %H:%i:%s'), 'anyone there? sorry to bother but its quite time sensitive'), 
(1, STR_TO_DATE('2023-02-01 11:15:13', '%Y-%m-%d %H:%i:%s'), 'okay thanks for responding. could I check in at noon already?'), (1, STR_TO_DATE('2023-02-01 11:20:59', '%Y-%m-%d %H:%i:%s'), 'perfect. apologies for the inconvenience! see you then!'), (2, STR_TO_DATE('2023-04-02 10:32:23', '%Y-%m-%d %H:%i:%s'), 'hi?'), 
(3, STR_TO_DATE('2023-04-02 10:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 1'), (3, STR_TO_DATE('2023-02-01 11:05:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 2'), (4, STR_TO_DATE('2022-04-10 07:12:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 3'), (5, STR_TO_DATE('2023-03-17 19:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 4'), 
(7, STR_TO_DATE('2023-10-07 11:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 5'), (7, STR_TO_DATE('2023-01-22 15:21:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 6'), (8, STR_TO_DATE('2022-10-02 16:05:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 7'), (9, STR_TO_DATE('2023-03-12 23:32:07', '%Y-%m-%d %H:%i:%s'), 'dummy message 8'), 
(10, STR_TO_DATE('2023-05-02 10:25:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 9'), (12, STR_TO_DATE('2023-02-27 18:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 10'), (13, STR_TO_DATE('2019-01-13 12:16:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 11'), (14, STR_TO_DATE('2023-04-11 10:11:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 12'), 
(17, STR_TO_DATE('2023-01-01 05:32:19', '%Y-%m-%d %H:%i:%s'), 'dummy message 13'), (20, STR_TO_DATE('2023-06-30 10:03:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 14');

INSERT INTO MessageReplies (bookingID, replysent, replytext)
VALUES (1, STR_TO_DATE('2023-02-01 10:37:23', '%Y-%m-%d %H:%i:%s'), 'hi how can I help? it is number 213.'), (1, STR_TO_DATE('2023-02-01 11:21:26', '%Y-%m-%d %H:%i:%s'), 'yeah sure, thats fine'), (1, STR_TO_DATE('2023-02-01 11:25:55', '%Y-%m-%d %H:%i:%s'), 'of course, no worries. see you soon!'), 
(2, STR_TO_DATE('2023-02-01 11:15:13', '%Y-%m-%d %H:%i:%s'), 'dummy message 1'), (3, STR_TO_DATE('2023-02-01 11:20:59', '%Y-%m-%d %H:%i:%s'), 'dummy message 2'), (4, STR_TO_DATE('2023-04-02 10:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 3'), 
(5, STR_TO_DATE('2023-04-02 10:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 4'), (6, STR_TO_DATE('2023-02-01 11:05:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 5'), (7, STR_TO_DATE('2022-04-10 07:12:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 6'), (8, STR_TO_DATE('2023-03-17 19:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 7'), 
(9, STR_TO_DATE('2023-10-07 11:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 8'), (10, STR_TO_DATE('2023-01-22 15:21:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 9'), (11, STR_TO_DATE('2022-10-02 16:05:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 10'), (12, STR_TO_DATE('2023-03-12 23:32:07', '%Y-%m-%d %H:%i:%s'), 'dummy message 11'), 
(13, STR_TO_DATE('2023-05-02 10:25:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 12'), (14, STR_TO_DATE('2023-02-27 18:32:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 13'), (15, STR_TO_DATE('2019-01-13 12:16:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 14'), (16, STR_TO_DATE('2023-04-11 10:11:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 15'), 
(17, STR_TO_DATE('2023-01-01 05:32:19', '%Y-%m-%d %H:%i:%s'), 'dummy message 16'), (20, STR_TO_DATE('2023-06-30 10:03:23', '%Y-%m-%d %H:%i:%s'), 'dummy message 17');

INSERT INTO Payment (bookingID, received, forwarded)
VALUES (1, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (2, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (3, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), 
(4, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (5, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (6, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), 
(7, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (8, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (9, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), 
(10, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (11, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (12, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), 
(13, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (14, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (15, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), 
(16, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (17, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (18, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), 
(19, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s')), (20, STR_TO_DATE('2023-01-28 09:17:25', '%Y-%m-%d %H:%i:%s'), STR_TO_DATE('2023-02-02 12:17:52', '%Y-%m-%d %H:%i:%s'));


-- @block insert into relational tables

INSERT INTO ProfilesAndLanguages (languageID, profileID)
VALUES (1, 1), (1, 2), (1, 3), (1, 4), (1, 5), (1, 6), (1, 7), (1, 8), (1, 9), (1, 10), 
(1, 11), (1, 12), (1, 13), (1, 14), (1, 15), (1, 16), (1, 17), (1, 18), (1, 19), (1, 20), 
(2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 6), (2, 7), (2, 8), (2, 9), (2, 10), 
(2, 11), (2, 12), (2, 13), (2, 14), (2, 15), (2, 16), (2, 17), (2, 18), (2, 19), (2, 20),
(3, 17), (4, 2), (4, 7), (4, 18), (6, 12), (6, 13), (6, 18);

INSERT INTO AmenitiesAndProperties (propertyID, amenitiesID)
VALUES (1, 3), (1, 7), (1, 9), (1, 12), (1, 13), (1, 18), (1, 20), (2, 1), (2, 2), (2, 3), (2, 4), (2, 5), (2, 7), (2, 9), (2, 10), (2, 11), (2, 12), (2, 14), (2, 15), (2, 16), 
(2, 18), (2, 19), (2, 20), (3, 2), (3, 4), (3, 9), (3, 12), (3, 13), (3, 16), (3, 18), (4, 5), (4, 7), (4, 12), (5, 5), (5, 19), (6, 8), (6, 9), (6, 19), (7, 8), (7, 19);

INSERT INTO BuildingTypeAndProperties (propertyID, buildingtypeID)
VALUES (1, 2), (2 ,6), (3, 12), (3, 8), (4, 16), (5, 1), (5, 11), (6, 8), (7, 7), (8, 20), 
(9, 14), (9, 13), (10, 10), (11, 11), (12, 12), (13, 13), (14, 4), (15, 5), (16, 19), (17, 17), 
(18, 18), (19, 16), (20, 21);

INSERT INTO VacationTypeAndProperties (vacationtypeID, propertyID)
VALUES (1, 18), (2, 2), (2, 7), (2, 11), (2, 15), (3, 3), (3, 4), (3, 8), (3, 9), (3, 12), (3, 15), (3, 16), (3, 20), (4, 6), (4, 14), (4, 19), (5, 1), (5, 5), (5, 15), (6, 6), 
(6, 14), (7, 14), (8, 13);