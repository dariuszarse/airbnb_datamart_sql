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

CREATE TABLE PropertyAddress
(
  addressID   INT     NOT NULL AUTO_INCREMENT,
  countryID   INT     NOT NULL,
  cityID      INT     NOT NULL,
  postalcode  VARCHAR(10) NOT NULL,
  streetname  VARCHAR(100) NOT NULL,
  housenumber VARCHAR(10) NOT NULL,
  PRIMARY KEY (addressID)
);

CREATE TABLE Amenities
(
  amenitiesID INT     NOT NULL AUTO_INCREMENT,
  amenityname VARCHAR(100) NOT NULL,
  PRIMARY KEY (amenitiesID)
);

CREATE TABLE AmenitiesAndProperties
(
  amenitiesID INT NOT NULL,
  propertyID  INT NOT NULL
);

CREATE TABLE Bookings
(
  bookingID  INT  NOT NULL AUTO_INCREMENT,
  userID     INT  NOT NULL,
  propertyID INT  NOT NULL,
  startdate  DATE NOT NULL,
  enddate    DATE NOT NULL,
  PRIMARY KEY (bookingID)
);

CREATE TABLE BuildingType
(
  buildingtypeID   INT NOT NULL AUTO_INCREMENT,
  buildingtypename VARCHAR(100) NOT NULL,
  PRIMARY KEY (buildingtypeID)
);

CREATE TABLE BuildingTypeAndProperties
(
  propertyID     INT NOT NULL,
  buildingtypeID INT NOT NULL
);

CREATE TABLE Cities
(
  cityID   INT     NOT NULL AUTO_INCREMENT,
  cityname VARCHAR(100) NOT NULL,
  PRIMARY KEY (cityID)
);

CREATE TABLE Countries
(
  countryID   INT     NOT NULL AUTO_INCREMENT,
  countryname VARCHAR(100) NOT NULL,
  PRIMARY KEY (countryID)
);

CREATE TABLE GuestReviews
(
  guestreviewID INT  NOT NULL AUTO_INCREMENT,
  rating        INT  NOT NULL,
  comment       TEXT NULL    ,
  bookingID     INT  NOT NULL,
  PRIMARY KEY (guestreviewID)
);

CREATE TABLE GuestDetails
(
  guestdetailsID INT NOT NULL AUTO_INCREMENT,
  userID     INT NOT NULL,
  creditcard BIGINT NOT NULL,
  cvv        INT NOT NULL,
  PRIMARY KEY (guestdetailsID)
);

CREATE TABLE HostDetails
(
  hostdetailsID INT NOT NULL AUTO_INCREMENT,
  userID      INT     NOT NULL,
  bankaccount VARCHAR(100) NOT NULL,
  PRIMARY KEY (hostdetailsID)
);

CREATE TABLE Languages
(
  languageID   INT     NOT NULL AUTO_INCREMENT,
  languagename VARCHAR(100) NOT NULL,
  PRIMARY KEY (languageID)
);

CREATE TABLE Messages
(
  messageID   INT      NOT NULL AUTO_INCREMENT,
  guestID     INT      NOT NULL,
  hostID      INT      NOT NULL,
  timesent    DATETIME NOT NULL,
  messagebody TEXT     NOT NULL,
  PRIMARY KEY (messageID)
);

CREATE TABLE Payment
(
  paymentID INT      NOT NULL AUTO_INCREMENT,
  bookingID INT      NOT NULL,
  received  DATETIME NULL    ,
  forwarded DATETIME NULL    ,
  PRIMARY KEY (paymentID)
);

CREATE TABLE Price
(
  priceID    INT   NOT NULL AUTO_INCREMENT,
  basicprice INT   NOT NULL    ,
  january    INT   NULL    ,
  february   INT   NULL    ,
  march      INT   NULL    ,
  april      INT   NULL    ,
  may        INT   NULL    ,
  june       INT   NULL    ,
  july       INT   NULL    ,
  august     INT   NULL    ,
  september  INT   NULL    ,
  october    INT   NULL    ,
  november   INT   NULL    ,
  december   INT   NULL    ,
  PRIMARY KEY (priceID)
);

CREATE TABLE ProfileImages
(
  profileimageID INT       NOT NULL AUTO_INCREMENT,
  profileID      INT       NOT NULL,
  imagedata      LONGBLOB  NOT NULL,
  PRIMARY KEY (profileimageID)
);

CREATE TABLE Profiles
(
  profileID INT  NOT NULL AUTO_INCREMENT,
  userID    INT  NOT NULL,
  bio       TEXT NULL    ,
  PRIMARY KEY (profileID)
);

CREATE TABLE ProfilesAndLanguages
(
  languageID INT NOT NULL,
  profileID  INT NOT NULL
);

CREATE TABLE Properties
(
  propertyID      INT     NOT NULL AUTO_INCREMENT,
  addressID       INT     NOT NULL,
  roomsID         INT     NOT NULL,
  accessibilityID INT     NOT NULL,
  userID          INT     NOT NULL,
  priceID         INT     NOT NULL,
  propertyname    VARCHAR(100) NOT NULL,
  propertydescription     TEXT    NULL    ,
  size            INT   NULL    ,
  PRIMARY KEY (propertyID)
);

CREATE TABLE PropertyImages
(
  propertyimageID INT       NOT NULL AUTO_INCREMENT,
  propertyID      INT       NOT NULL,
  propertyimage           LONGBLOB NOT NULL,
  PRIMARY KEY (propertyimageID)
);

CREATE TABLE PropertyReviews
(
  propertyreviewID INT  NOT NULL AUTO_INCREMENT,
  bookingID        INT  NOT NULL,
  propertyrating   INT  NOT NULL,
  comment          TEXT NULL    ,
  PRIMARY KEY (propertyreviewID)
);

CREATE TABLE Rooms
(
  roomsID     INT NOT NULL AUTO_INCREMENT,
  bedrooms    INT NOT NULL,
  bathrooms   INT NOT NULL,
  singlebeds INT NOT NULL,
  doublebeds INT NOT NULL,
  PRIMARY KEY (roomsID)
);

CREATE TABLE Users
(
  userID      INT     NOT NULL AUTO_INCREMENT,
  email       VARCHAR(100) NOT NULL,
  firstname   VARCHAR(100) NOT NULL,
  lastname    VARCHAR(100) NOT NULL,
  phonenumber VARCHAR(100) NOT NULL,
  PRIMARY KEY (userID)
);

CREATE TABLE VacationTypeAndProperties
(
  vacationtypeID INT NOT NULL,
  propertyID     INT NOT NULL
);

CREATE TABLE VacationType
(
  vacationtypeID   INT NOT NULL AUTO_INCREMENT,
  vacationtypename VARCHAR(100) NOT NULL,
  PRIMARY KEY (vacationtypeID)
);

