-- @block creating database and all
DROP DATABASE airbnb;
CREATE DATABASE airbnb;
use airbnb;

-- @block creating tables
CREATE TABLE Accessibility
(
  accessibilityID INT NOT NULL AUTO_INCREMENT,
  airport         INT NULL    ,
  train           INT NULL    ,
  bus             INT NULL    ,
  PRIMARY KEY (accessibilityID)
);

-- @block creating tables
CREATE TABLE PropertyAddress
(
  addressID   INT     NOT NULL AUTO_INCREMENT,
  countryID   INT     NOT NULL,
  cityID      INT     NOT NULL,
  postalcode  VARCHAR(20) NOT NULL,
  streetname  VARCHAR(100) NOT NULL,
  housenumber VARCHAR(10) NOT NULL,
  PRIMARY KEY (addressID)
);

-- @block creating tables
CREATE TABLE Amenities
(
  amenitiesID INT     NOT NULL AUTO_INCREMENT,
  amenityname VARCHAR(100) NOT NULL,
  PRIMARY KEY (amenitiesID)
);

-- @block creating tables
CREATE TABLE AmenitiesAndProperties
(
  amenitiesID INT NOT NULL,
  propertyID  INT NOT NULL
);

-- @block creating tables
CREATE TABLE Bookings
(
  bookingID  INT  NOT NULL,
  userID     INT  NOT NULL,
  propertyID INT  NOT NULL,
  startdate  DATE NOT NULL,
  enddate    DATE NOT NULL,
  PRIMARY KEY (bookingID)
);

-- @block creating tables
CREATE TABLE BuildingType
(
  buildingtypeID   INT     NOT NULL,
  buildingtypename VARCHAR(100) NOT NULL,
  PRIMARY KEY (buildingtypeID)
);

-- @block creating tables
CREATE TABLE BuildingTypeAndProperties
(
  propertyID     INT NOT NULL,
  buildingtypeID INT NOT NULL
);

-- @block creating tables
CREATE TABLE Cities
(
  cityID   INT     NOT NULL,
  cityname VARCHAR(100) NOT NULL,
  PRIMARY KEY (cityID)
);

-- @block creating tables
CREATE TABLE Countries
(
  countryID   INT     NOT NULL,
  countryname VARCHAR(100) NOT NULL,
  PRIMARY KEY (countryID)
);

-- @block creating tables
CREATE TABLE GuestReviews
(
  guestreviewID INT  NOT NULL,
  rating        INT  NOT NULL,
  comment       TEXT NULL    ,
  bookingID     INT  NOT NULL,
  PRIMARY KEY (guestreviewID)
);

-- @block creating tables
CREATE TABLE Guests
(
  userID     INT NOT NULL,
  creditcard INT NOT NULL,
  cvv        INT NOT NULL,
  PRIMARY KEY (userID)
);

-- @block creating tables
CREATE TABLE Hosts
(
  userID      INT     NOT NULL,
  bankaccount VARCHAR(100) NOT NULL,
  PRIMARY KEY (userID)
);

-- @block creating tables
CREATE TABLE Languages
(
  languageID   INT     NOT NULL,
  languagename VARCHAR(100) NOT NULL,
  PRIMARY KEY (languageID)
);

-- @block creating tables
CREATE TABLE Messages
(
  messageID   INT      NOT NULL,
  userID      INT      NOT NULL,
  userID      INT      NOT NULL,
  sent        DATETIME NOT NULL,
  messagebody TEXT     NOT NULL,
  PRIMARY KEY (messageID)
);

-- @block creating tables
CREATE TABLE Payment
(
  paymentID INT      NOT NULL,
  bookingID INT      NOT NULL,
  received  DATETIME NULL    ,
  forwarded DATETIME NULL    ,
  PRIMARY KEY (paymentID)
);

-- @block creating tables
CREATE TABLE Price
(
  priceID    INT     NOT NULL,
  basicprice VARCHAR(20) NULL    ,
  january    FLOAT   NULL    ,
  february   FLOAT   NULL    ,
  march      FLOAT   NULL    ,
  april      FLOAT   NULL    ,
  mai        FLOAT   NULL    ,
  june       FLOAT   NULL    ,
  july       FLOAT   NULL    ,
  august     FLOAT   NULL    ,
  september  FLOAT   NULL    ,
  october    FLOAT   NULL    ,
  november   FLOAT   NULL    ,
  december   FLOAT   NULL    ,
  PRIMARY KEY (priceID)
);

-- @block creating tables
CREATE TABLE ProfileImages
(
  profileimageID INT       NOT NULL,
  profileID      INT       NOT NULL,
  imagedata      BLOB  NOT NULL,
  PRIMARY KEY (profileimageID)
);

-- @block creating tables
CREATE TABLE Profiles
(
  profileID INT  NOT NULL,
  userID    INT  NOT NULL,
  bio       TEXT NULL    ,
  PRIMARY KEY (profileID)
);

-- @block creating tables
CREATE TABLE ProfilesAndLanguages
(
  languageID INT NOT NULL,
  profileID  INT NOT NULL
);

-- @block creating tables
CREATE TABLE Properties
(
  propertyID      INT     NOT NULL,
  addressID       INT     NOT NULL,
  roomsID         INT     NOT NULL,
  accessibilityID INT     NOT NULL,
  userID          INT     NOT NULL,
  priceID         INT     NOT NULL,
  propertyname    VARCHAR NOT NULL,
  description     TEXT    NULL    ,
  size            FLOAT   NULL    ,
  PRIMARY KEY (propertyID)
);

-- @block creating tables
CREATE TABLE PropertyImages
(
  propertyimageID INT       NOT NULL,
  propertyID      INT       NOT NULL,
  image           VARBINARY NOT NULL,
  PRIMARY KEY (propertyimageID)
);

-- @block creating tables
CREATE TABLE PropertyReviews
(
  propertyreviewID INT  NOT NULL,
  bookingID        INT  NOT NULL,
  rating           INT  NOT NULL,
  comment          TEXT NULL    ,
  PRIMARY KEY (propertyreviewID)
);

-- @block creating tables
CREATE TABLE Rooms
(
  roomsID     INT NOT NULL,
  bedrooms    INT NOT NULL,
  bathrooms   INT NOT NULL,
  single beds INT NOT NULL,
  double beds INT NOT NULL,
  PRIMARY KEY (roomsID)
);

-- @block creating tables
CREATE TABLE Users
(
  userID      INT     NOT NULL,
  email       VARCHAR NOT NULL,
  firstname   VARCHAR NOT NULL,
  lastname    VARCHAR NOT NULL,
  phonenumber VARCHAR NOT NULL,
  PRIMARY KEY (userID)
);

-- @block creating tables
CREATE TABLE VacationTypeAndProperties
(
  vacationtypeID INT NOT NULL,
  propertyID     INT NOT NULL
);

-- @block creating tables
CREATE TABLE VacationType
(
  vacationtypeID   INT NOT NULL,
  vacationtypename     NULL    ,
  PRIMARY KEY (vacationtypeID)
);

-- @block altering tables
ALTER TABLE Profiles
  ADD CONSTRAINT FK_Users_TO_Profiles
    FOREIGN KEY (userID)
    REFERENCES Users (userID);

-- @block altering tables
ALTER TABLE PropertyAddress
  ADD CONSTRAINT FK_Countries_TO_PropertyAddress
    FOREIGN KEY (countryID)
    REFERENCES Countries (countryID);

-- @block altering tables
ALTER TABLE PropertyAddress
  ADD CONSTRAINT FK_Cities_TO_PropertyAddress
    FOREIGN KEY (cityID)
    REFERENCES Cities (cityID);

-- @block altering tables
ALTER TABLE ProfilesAndLanguages
  ADD CONSTRAINT FK_Languages_TO_ProfilesAndLanguages
    FOREIGN KEY (languageID)
    REFERENCES Languages (languageID);

-- @block altering tables
ALTER TABLE ProfilesAndLanguages
  ADD CONSTRAINT FK_Profiles_TO_ProfilesAndLanguages
    FOREIGN KEY (profileID)
    REFERENCES Profiles (profileID);

-- @block altering tables
ALTER TABLE Properties
  ADD CONSTRAINT FK_PropertyAddress_TO_Properties
    FOREIGN KEY (addressID)
    REFERENCES Address (addressID);

-- @block altering tables
ALTER TABLE Properties
  ADD CONSTRAINT FK_Rooms_TO_Properties
    FOREIGN KEY (roomsID)
    REFERENCES Rooms (roomsID);

-- @block altering tables
ALTER TABLE Properties
  ADD CONSTRAINT FK_Accessibility_TO_Properties
    FOREIGN KEY (accessibilityID)
    REFERENCES Accessibility (accessibilityID);

-- @block altering tables
ALTER TABLE PropertyImages
  ADD CONSTRAINT FK_Properties_TO_PropertyImages
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

-- @block altering tables
ALTER TABLE ProfileImages
  ADD CONSTRAINT FK_Profiles_TO_ProfileImages
    FOREIGN KEY (profileID)
    REFERENCES Profiles (profileID);

-- @block altering tables
ALTER TABLE Hosts
  ADD CONSTRAINT FK_Users_TO_hosts
    FOREIGN KEY (userID)
    REFERENCES Users (userID);

-- @block altering tables
ALTER TABLE Guests
  ADD CONSTRAINT FK_Users_TO_Guests
    FOREIGN KEY (userID)
    REFERENCES Users (userID);

-- @block altering tables
ALTER TABLE Payment
  ADD CONSTRAINT FK_Bookings_TO_Payment
    FOREIGN KEY (bookingID)
    REFERENCES Bookings (bookingID);

-- @block altering tables
ALTER TABLE Bookings
  ADD CONSTRAINT FK_Guests_TO_Bookings
    FOREIGN KEY (userID)
    REFERENCES Guests (userID);

-- @block altering tables
ALTER TABLE Properties
  ADD CONSTRAINT FK_hosts_TO_Properties
    FOREIGN KEY (userID)
    REFERENCES hosts (userID);

-- @block altering tables
ALTER TABLE Bookings
  ADD CONSTRAINT FK_Properties_TO_Bookings
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

-- @block altering tables
ALTER TABLE amenities x properties
  ADD CONSTRAINT FK_Amenities_TO_amenities x properties
    FOREIGN KEY (amenitiesID)
    REFERENCES Amenities (amenitiesID);

-- @block altering tables
ALTER TABLE amenities x properties
  ADD CONSTRAINT FK_Properties_TO_amenities x properties
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

-- @block altering tables
ALTER TABLE vacation type x properties
  ADD CONSTRAINT FK_VacationType_TO_vacation type x properties
    FOREIGN KEY (vacationtypeID)
    REFERENCES VacationType (vacationtypeID);

-- @block altering tables
ALTER TABLE vacation type x properties
  ADD CONSTRAINT FK_Properties_TO_vacation type x properties
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

-- @block altering tables
ALTER TABLE Messages
  ADD CONSTRAINT FK_hosts_TO_Messages
    FOREIGN KEY (userID)
    REFERENCES hosts (userID);

-- @block altering tables
ALTER TABLE Messages
  ADD CONSTRAINT FK_Guests_TO_Messages
    FOREIGN KEY (userID)
    REFERENCES Guests (userID);

-- @block altering tables
ALTER TABLE Properties
  ADD CONSTRAINT FK_Price_TO_Properties
    FOREIGN KEY (priceID)
    REFERENCES Price (priceID);

-- @block altering tables
ALTER TABLE PropertyReviews
  ADD CONSTRAINT FK_Bookings_TO_PropertyReviews
    FOREIGN KEY (bookingID)
    REFERENCES Bookings (bookingID);

-- @block altering tables
ALTER TABLE GuestReviews
  ADD CONSTRAINT FK_Bookings_TO_GuestReviews
    FOREIGN KEY (bookingID)
    REFERENCES Bookings (bookingID);

-- @block altering tables
ALTER TABLE buildingtype x properties
  ADD CONSTRAINT FK_Properties_TO_buildingtype x properties
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

-- @block altering tables
ALTER TABLE buildingtype x properties
  ADD CONSTRAINT FK_BuildingType_TO_buildingtype x properties
    FOREIGN KEY (buildingtypeID)
    REFERENCES BuildingType (buildingtypeID);
