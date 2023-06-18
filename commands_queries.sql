/* inserting basic user data */
INSERT INTO USERS (email, firstname, lastname, phonenumber) VALUES ('dummyemail', 'dummyfirstname', 'dummylastname', 'dummyphonenumber');

/* adding profile page and bio */
INSERT INTO Profiles (userID, bio) VALUES ('dummyID', 'bio');

/* adding profile image and language skills and linking it to profile */
INSERT INTO profileimages (profileID, profileimage) VALUES ('dummyprofileID', 'dummyprofileimage');
INSERT INTO profilesandlanguages (languageID, profileID) VALUES ('dummylanguageID', 'dummyprofileID');

/* updating email and phonenumber */
UPDATE users SET email = 'newdummyemail' WHERE email = 'olddummyemail';
UPDATE users SET phonenumber = 'newdummyphonenumber' WHERE phonenumber = 'olddummyphonenumber';

/* updating profile bio */
UPDATE profiles SET bio = 'newdummybio' WHERE userID = 'dummyID';

/* editing/deleting/adding profile pictures */
UPDATE profileimages SET profileimage = 'newdummypath' WHERE profileimage = 'olddummypath';
DELETE FROM profileimages WHERE profileID = 'dummyID' and profileimage = 'dummypath';
INSERT INTO profileimages (profileID, profileimage) VALUES ('dummyID', 'dummypath');

/* updating language skills */
UPDATE profilesandlanguages SET languageID = 'newdummylanguageID' where profileID = 'dummyprofileID' and languageID = 'olddummylanguageID';

/* registering as host or guest (storing additional information linked to user) */
INSERT INTO guestdetails (userID, creditcard, cvv) VALUES ('dummyID', 'dummycreditcard', 'dummycvv');
INSERT INTO hostdetails (userID, bankaccount) VALUES ('dummyID', 'dummybankaccount');

/* add property details */
INSERT INTO Accessibility (airport, train, bus) VALUES ('dummyairport', 'dummytrain', 'dummybus');
INSERT INTO Price (basicprice, january, february, march, april, may, june, july, august, september, october, november, december) VALUES ('dummybasicprice', 'dummyjanuary', 'dummyfebruary', 'dummymarch', 'dummyapril', 'dummymay', 'dummyjune', 'dummyjuly', 'dummyaugust', 'dummyseptember', 'dummyoctober', 'dummynovember', 'dummydecember');
INSERT INTO Rooms (bedrooms, bathrooms, singlebeds, doublebeds) VALUES ('dummybedrooms', 'dummybathrooms', 'dummysinglebeds', 'dummydoublebeds');
INSERT INTO PropertyAddress (countryID, cityID, postalcode, streetname, housenumber) VALUES ('dummycountryID', 'dummycityID', 'dummypostalcode', 'dummystreetname', 'dummyhousenumber');
INSERT INTO Properties (addressID, roomsID, accessibilityID, userID, priceID, propertyname, propertydescription, size) VALUES ('dummyaddressID', 'dummyroomsID', 'dummyaccessibilityID', 'dummyuserID', 'dummypriceID', 'dummypropertyname', 'dummypropertydescription', 'dummysize');
INSERT INTO PropertyImages (propertyID, propertyimage) VALUES ('dummypropertyID', 'dummypropertyimage');
INSERT INTO AmenitiesAndProperties (amenitiesID, propertyID) VALUES ('dummyamenitiesID', 'dummypropertyID');
INSERT INTO BuildingTypeAndProperties (propertyID, buildingtypeID) VALUES ('dummypropertyID', 'dummybuildingtypeID');
INSERT INTO VacationTypeAndProperties (vacationtypeID, propertyID) VALUES ('dummyvacationtypeID', 'dummypropertyID');

/* editing/updating property details */
UPDATE Accessibility SET airport = 'newairport', train = 'newtrain', bus = 'newbus' WHERE accessibilityID = 'dummyID';
UPDATE Price SET basicprice = 'newdummybasicprice', january = 'newdummyjanuary', february = 'newdummyfebruary', march = 'newdummymarch', april = 'newdummyapril', may = 'newdummymay', june = 'newdummyjune', july = 'newdummyjuly', 
august = 'newdummyaugust', september = 'newdummyseptember', october = 'newdummyoctober', november = 'newdummynovember', december = 'newdummydecember' WHERE priceID = 'dummyID';
UPDATE Rooms SET bedrooms = 'newdummybedrooms', bathrooms = 'newdummybathrooms', singlebeds = 'newdummysinglebeds', doublebeds = 'newdummydoublebeds' WHERE roomsID = 'dummyID';
INSERT INTO PropertyAddress (countryID, cityID, postalcode, streetname, housenumber) VALUES ('dummycountryID', 'dummycityID', 'dummypostalcode', 'dummystreetname', 'dummyhousenumber');
INSERT INTO Properties (addressID, roomsID, accessibilityID, userID, priceID, propertyname, propertydescription, size) VALUES ('dummyaddressID', 'dummyroomsID', 'dummyaccessibilityID', 'dummyuserID', 'dummypriceID', 'dummypropertyname', 'dummypropertydescription', 'dummysize');
INSERT INTO PropertyImages (propertyID, propertyimage) VALUES ('dummypropertyID', 'dummypropertyimage');
INSERT INTO AmenitiesAndProperties (amenitiesID, propertyID) VALUES ('dummyamenitiesID', 'dummypropertyID');
INSERT INTO BuildingTypeAndProperties (propertyID, buildingtypeID) VALUES ('dummypropertyID', 'dummybuildingtypeID');
INSERT INTO VacationTypeAndProperties (vacationtypeID, propertyID) VALUES ('dummyvacationtypeID', 'dummypropertyID');


/* search for properties by certain criteria */
SELECT properties.propertyname, accessibility.train FROM accessibility  INNER JOIN properties ON accessibility.accessibilityID = properties.accessibilityID;


/* book a property */
INSERT INTO bookings (userID, propertyID, startdate, enddate) VALUES ('dummyuserID', 'dummypropertyID', 'dummystartdate', 'dummyenddate');

/* store guest/property review */
INSERT INTO guestreviews (bookingID, guestrating, guestcomment) VALUES ('dummybookingID', 'dummyrating', 'dummyguestcomment');
INSERT INTO propertyreviews (bookingID, propertyrating, propertycomment) VALUES ('dummybookingID', 'dummypropertyrating', 'dummypropertycomment');

/* store messages */
INSERT INTO messagereplies (bookingID, replysent, replytext) VALUES ('dummybookingID', 'dummyreplysent', 'dummyreplytext');
INSERT INTO messagerequests (bookingID, requestsent, requesttext) VALUES ('dummybookingID', 'dummyrequestsent', 'dummyrequesttext');

/* commands for selecting test case data for presentation */
Select * From accessibility where accessibilityID = 1;
Select * From amenities;
Select * From amenitiesandproperties where propertyID = 1;
Select * from bookings where userID = 1;
Select * from buildingtype;
Select * from buildingtypeandproperties where propertyID = 4 or propertyID = 7 or propertyID = 18;
Select * from cities;
Select * from countries;
Select * from guestreviews where bookingID = 1 or bookingID = 2 or bookingID = 13 or bookingID = 14;
Select * from guestdetails where userID = 1;
Select * from hostdetails where userID = 1;
Select * from languages;
Select * from messagerequests where bookingID = 1;
Select * from messagereplies where bookingID = 1;
select * from payment where bookingID = 1;
Select * from price where priceID = 1;
Select * from profileimages where profileID = 1;
Select * from profiles where userID = 1;
Select * from profilesandlanguages where profileID = 1;
Select * from properties where userID = 1;
Select * from propertyimages where propertyID = 1;
Select * from propertyreviews where bookingID = 1;
Select * from rooms where roomsID = 2;
select * from propertyaddress where addressID = 1;
Select * from users where userID = 1;
Select * from vacationtypeandproperties where propertyID = 1;
Select * from vacationtype;