CREATE TABLE userTable
(
UserName VARCHAR(15) NOT NULL,
Email VARCHAR(20) NOT NULL,
PhoneNumber VARCHAR(10),
Pword Varchar(15) NOT NULL,

CONSTRAINT	usertable_PK PRIMARY KEY(UserName)
);

CREATE TABLE Features
(
FeatureId VARCHAR(10) NOT NULL,
FeatureDescription VARCHAR(50) NOT NULL,

CONSTRAINT features_PK PRIMARY KEY(FeatureId)
);

CREATE TABLE Genre
(
GenreName VARCHAR(20) NOT NULL,
GenreDescription VARCHAR(300) NOT NULL,

CONSTRAINT Genre_PK PRIMARY KEY(GenreName)
);

CREATE TABLE Content
(
ContentId VARCHAR(20) NOT NULL,
ContentName VARCHAR(30) NOT NULL,
ContentType VARCHAR(10) NOT NULL CHECK(ContentType in ('Movie','Series')),

CONSTRAINT Content_PK PRIMARY KEY(ContentId)
);

CREATE TABLE StreamingService
(
ServiceName VARCHAR(20) NOT NULL,
ServiceLink VARCHAR(2083) NOT NULL,
ServiceRating DECIMAL(3,2),

CONSTRAINT StreamingService_PK PRIMARY KEY(ServiceName)
);

CREATE TABLE GenreContent
(
GenreContentId VARCHAR(20) NOT NULL,
ContentId VARCHAR(20) NOT NULL,
GenreName VARCHAR(20) NOT NULL,

CONSTRAINT GenreContent_PK PRIMARY KEY(GenreContentId),
CONSTRAINT GenreContent_FK_Content FOREIGN KEY(ContentId) REFERENCES Content(ContentId),
CONSTRAINT GenreContent_FK_Genre FOREIGN KEY(GenreName) REFERENCES Genre(GenreName)
);

CREATE TABLE ServiceContent
(
ServiceContentId VARCHAR(25) NOT NULL,
ServiceName VARCHAR(20) NOT NULL,
ContentId VARCHAR(20) NOT NULL,
Exclusive VARCHAR(10) NOT NULL CHECK(Exclusive in ('True','False'))

CONSTRAINT ServiceContent_PK PRIMARY KEY(ServiceContentId),
CONSTRAINT ServiceContent_FK_ServiceName FOREIGN KEY(ServiceName) REFERENCES StreamingService(ServiceName),
CONSTRAINT ServiceContent_FK_ContentId FOREIGN KEY(ContentId) REFERENCES Content(ContentId)
);

CREATE TABLE PlanTable
(
PlanId VARCHAR(10) NOT NULL,
PlanName VARCHAR(30),
Price DECIMAL(6,2) NOT NULL,
ServiceName VARCHAR(20) NOT NULL,

CONSTRAINT PlanTable_PK PRIMARY KEY(PlanId),
CONSTRAINT PlanTable_FK FOREIGN KEY(ServiceName) REFERENCES StreamingService(ServiceName)
);

CREATE TABLE FeaturePlan
(
FeaturePlanId VARCHAR(20) NOT NULL,
PlanId VARCHAR(10) NOT NULL,
FeatureId VARCHAR(10) NOT NULL,

CONSTRAINT FeaturePlan_PK PRIMARY KEY(FeaturePlanId),
CONSTRAINT FeaturePlan_FK_PlanId FOREIGN KEY(PlanId) REFERENCES PlanTable(PlanId),
CONSTRAINT FeaturePlan_FK_FeatureId FOREIGN KEY(FeatureId) REFERENCES Features(FeatureId)
);

CREATE TABLE Review
(
ReviewId VARCHAR(10) NOT NULL,
Rating DECIMAL(3,2) NOT NULL CHECK(Rating in (1.0,2.0,3.0,4.0,5.0)),
Review VARCHAR(200),
ServiceName VARCHAR(20) NOT NULL,
UserName VARCHAR(15) NOT NULL

CONSTRAINT Review_PK PRIMARY KEY(ReviewId),
CONSTRAINT Review_FK_ServiceName FOREIGN KEY(ServiceName) REFERENCES StreamingService(ServiceName),
CONSTRAINT Review_FK_UserName FOREIGN KEY(UserName) REFERENCES userTable(UserName)
);