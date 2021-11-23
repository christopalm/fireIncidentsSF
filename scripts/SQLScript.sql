CREATE TABLE Exposure (
idExposure INT IDENTITY(1,1), 
exposureNumber INT NOT NULL, 
CONSTRAINT PK_id_exposure PRIMARY KEY (idExposure)
);

CREATE TABLE Location (
idLocation INT IDENTITY(1,1), 
AddressLocation VARCHAR(1000) NOT NULL,
PointLocation GEOGRAPHY NULL,
CONSTRAINT PK_idLocation_Location PRIMARY KEY (idLocation)
);

CREATE TABLE TimeDim (
idTime INT IDENTITY(1,1), 
incidentDate DATETIME NOT NULL, 
CONSTRAINT PK_idTime_TimeDim PRIMARY KEY (idTime)
);

CREATE TABLE Caller (
idCaller INT IDENTITY(1,1),
callerPhone VARCHAR(500),
CONSTRAINT PK_idCaller_Caller PRIMARY KEY(idCaller)
);

CREATE TABLE City(
	idCity INT IDENTITY(1,1),
	CityName VARCHAR(1000) NOT NULL,
	CONSTRAINT PK_idCity_City PRIMARY KEY(idCity)
);

CREATE TABLE Station(
	idStation INT IDENTITY(1,1),
	StationArea VARCHAR(1000) NOT NULL,
	BattalionNumber VARCHAR(1000) NOT NULL,
	CONSTRAINT PK_idStation_Station PRIMARY KEY(idStation)
);

CREATE TABLE Situation(
	idSituation INT IDENTITY(1,1),
	SituationCode INT NOT NULL,
	SituationDescription VARCHAR(1000) NOT NULL
	CONSTRAINT PK_idSituation_Situation PRIMARY KEY(idSituation)
);

CREATE TABLE Action(
	idAction INT IDENTITY(1,1),
	ActionCode INT NOT NULL,
	ActionDescription VARCHAR(1000) NOT NULL
	CONSTRAINT PK_idAction_Action PRIMARY KEY(idAction)
);

CREATE TABLE PropertyUse(
	idPropertyUse INT IDENTITY(1,1),
	PropertyUseCode VARCHAR(100) NOT NULL,
	PropertyUseDescription VARCHAR(1000) NOT NULL
	CONSTRAINT PK_idProperty_PropertyUse PRIMARY KEY(idPropertyUse)
);

CREATE TABLE FireArea(
	idPFireArea INT IDENTITY(1,1),
	FireAreaCode VARCHAR(100) NOT NULL,
	FireAreaDescription VARCHAR(1000) NOT NULL
	CONSTRAINT PK_idFireArea_FireArea PRIMARY KEY(idFireArea)
);

CREATE TABLE District(
	idDistric INT IDENTITY(1,1),
	DistrictDescription VARCHAR(1000) NOT NULL
	CONSTRAINT PK_idDistrict_District PRIMARY KEY(idDistric)
);

CREATE TABLE Fire(
	idFire INT IDENTITY(1,1),
	IncidentNumber VARCHAR(500),
	ID VARCHAR(500), 
	SuppressionUnits INT, 
	SuppresionPersonnel INT, 
	EMSUnits INT, 
	EMSPersonnel INT, 
	OtherUnits INT, 
	OtherPersonnel INT, 
	FirstUnitOnScene VARCHAR(500), 
	EstimatedPropertyLoss INT, 
	EstimatedContentLoss INT,
	FireFatalities INT, 
	FireInjuries INT, 
	CivilianFatalities INT, 
	CivilianInjuries INT, 
	NumberOfAlarms INT, 
	MutualAid VARCHAR(500), 
	FloorOfFireOrigin INT, 
	NumberOfFloorsWithMinimumDamage INT, 
	NumberOfFloorsWithSignificantDamage INT, 
	NumberOfFloorsWithHeavyDamage INT, 
	NumberOfFloorsWithExtremeDamage INT,
	idExposure INT,
	idLocation INT,
	idTime INT,
	idCity INT, 
	idStation INT, 
	idSituation INT,
	idAction INT,
	idPropertyUse INT,
	idFireArea INT,
	idDistrict INT,
	CONSTRAINT FK_idExposure_Exposure_idExposure FOREIGN KEY(idExposure) REFERENCES Exposure(idExposure),
	CONSTRAINT FK_idLocation_Location_idLocation FOREIGN KEY(idLocation) REFERENCES Location(idLocation),
	CONSTRAINT FK_idLocation_TimeDim_idTime FOREIGN KEY(idTime) REFERENCES TimeDim(idTime),
	CONSTRAINT FK_idCity_City_idCity FOREIGN KEY(idCity) REFERENCES City(idCity),
	CONSTRAINT FK_idStation_Station_idStation FOREIGN KEY(idStation) REFERENCES Station(idStation),
	CONSTRAINT FK_idSituation_Situation_idSituation FOREIGN KEY(idSituation) REFERENCES Situation(idSituation),
	CONSTRAINT FK_idAction_Action_idAction FOREIGN KEY(idAction) REFERENCES Action(idAction),
	CONSTRAINT FK_idPropertyUse_PropertyUse_idPropertyUse FOREIGN KEY(idPropertyUse) REFERENCES PropertyUse(idPropertyUse),
	CONSTRAINT FK_idFireArea_FireArea_idFireArea FOREIGN KEY(idFireArea) REFERENCES FireArea(idFireArea),
	CONSTRAINT FK_idDistrict_District_idDistrict FOREIGN KEY(idDistrict) REFERENCES District(idDistric),
	CONSTRAINT PK_idFire_Fire PRIMARY KEY(idFire)
);


CREATE TABLE TestLocation (
idLocation INT IDENTITY(1,1), 
AddressLocation VARCHAR(1000) NOT NULL,
PointLocation VARCHAR(500) NULL,
CONSTRAINT PK_idLocation_Location PRIMARY KEY (idLocation)
);