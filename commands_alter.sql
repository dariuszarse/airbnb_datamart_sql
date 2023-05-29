-- @block select database
use airbnb;

-- @block altering tables
ALTER TABLE Profiles
  ADD CONSTRAINT FK_Users_TO_Profiles
    FOREIGN KEY (userID)
    REFERENCES Users (userID);

ALTER TABLE PropertyAddress
  ADD CONSTRAINT FK_Countries_TO_PropertyAddress
    FOREIGN KEY (countryID)
    REFERENCES Countries (countryID);

ALTER TABLE PropertyAddress
  ADD CONSTRAINT FK_Cities_TO_PropertyAddress
    FOREIGN KEY (cityID)
    REFERENCES Cities (cityID);

ALTER TABLE ProfilesAndLanguages
  ADD CONSTRAINT FK_Languages_TO_ProfilesAndLanguages
    FOREIGN KEY (languageID)
    REFERENCES Languages (languageID);

ALTER TABLE ProfilesAndLanguages
  ADD CONSTRAINT FK_Profiles_TO_ProfilesAndLanguages
    FOREIGN KEY (profileID)
    REFERENCES Profiles (profileID);

ALTER TABLE Properties
  ADD CONSTRAINT FK_PropertyAddress_TO_Properties
    FOREIGN KEY (addressID)
    REFERENCES PropertyAddress (addressID);

ALTER TABLE Properties
  ADD CONSTRAINT FK_Rooms_TO_Properties
    FOREIGN KEY (roomsID)
    REFERENCES Rooms (roomsID);

ALTER TABLE Properties
  ADD CONSTRAINT FK_Accessibility_TO_Properties
    FOREIGN KEY (accessibilityID)
    REFERENCES Accessibility (accessibilityID);

ALTER TABLE PropertyImages
  ADD CONSTRAINT FK_Properties_TO_PropertyImages
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

ALTER TABLE ProfileImages
  ADD CONSTRAINT FK_Profiles_TO_ProfileImages
    FOREIGN KEY (profileID)
    REFERENCES Profiles (profileID);

ALTER TABLE HostDetails
  ADD CONSTRAINT FK_Users_TO_HostDetails
    FOREIGN KEY (userID)
    REFERENCES Users (userID);

ALTER TABLE GuestDetails
  ADD CONSTRAINT FK_Users_TO_GuestDetails
    FOREIGN KEY (userID)
    REFERENCES Users (userID);

ALTER TABLE Payment
  ADD CONSTRAINT FK_Bookings_TO_Payment
    FOREIGN KEY (bookingID)
    REFERENCES Bookings (bookingID);

ALTER TABLE Bookings
  ADD CONSTRAINT FK_GuestDetails_TO_Bookings
    FOREIGN KEY (userID)
    REFERENCES GuestDetails (userID);

ALTER TABLE Properties
  ADD CONSTRAINT FK_HostDetails_TO_Properties
    FOREIGN KEY (userID)
    REFERENCES HostDetails (userID);

ALTER TABLE Bookings
  ADD CONSTRAINT FK_Properties_TO_Bookings
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

ALTER TABLE AmenitiesAndProperties
  ADD CONSTRAINT FK_Amenities_TO_AmenitiesAndProperties
    FOREIGN KEY (amenitiesID)
    REFERENCES Amenities (amenitiesID);

ALTER TABLE AmenitiesAndProperties
  ADD CONSTRAINT FK_Properties_TO_AmenitiesAndProperties
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

ALTER TABLE VacationTypeAndProperties
  ADD CONSTRAINT FK_VacationType_TO_VacationTypeAndProperties
    FOREIGN KEY (vacationtypeID)
    REFERENCES VacationType (vacationtypeID);

ALTER TABLE VacationTypeAndProperties
  ADD CONSTRAINT FK_Properties_TO_VacationTypeAndProperties
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

ALTER TABLE Messages
  ADD CONSTRAINT FK_HostDetails_TO_Messages
    FOREIGN KEY (hostID)
    REFERENCES HostDetails (userID);

ALTER TABLE Messages
  ADD CONSTRAINT FK_GuestDetails_TO_Messages
    FOREIGN KEY (guestID)
    REFERENCES GuestDetails (userID);

ALTER TABLE Properties
  ADD CONSTRAINT FK_Price_TO_Properties
    FOREIGN KEY (priceID)
    REFERENCES Price (priceID);

ALTER TABLE PropertyReviews
  ADD CONSTRAINT FK_Bookings_TO_PropertyReviews
    FOREIGN KEY (bookingID)
    REFERENCES Bookings (bookingID);

ALTER TABLE GuestReviews
  ADD CONSTRAINT FK_Bookings_TO_GuestReviews
    FOREIGN KEY (bookingID)
    REFERENCES Bookings (bookingID);

ALTER TABLE BuildingTypeAndProperties
  ADD CONSTRAINT FK_Properties_TO_BuildingTypeAndProperties
    FOREIGN KEY (propertyID)
    REFERENCES Properties (propertyID);

ALTER TABLE BuildingTypeAndProperties
  ADD CONSTRAINT FK_BuildingType_TO_BuildingTypeAndProperties
    FOREIGN KEY (buildingtypeID)
    REFERENCES BuildingType (buildingtypeID);