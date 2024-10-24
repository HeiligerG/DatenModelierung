USE FitnessCenter
GO

CREATE TABLE BulkTest(
    ONRP               int NOT NULL PRIMARY KEY, 
    PLZTyp             tinyint NOT NULL,
    PLZ                smallint NOT NULL, 
    PLZZusatz          smallint NOT NULL, 
    Ortsbezeichnung18  varchar(18) NOT NULL,
    Ortsbezeichnung27  varchar(27) NOT NULL,
    Kanton             char(2) NOT NULL
 );

BULK INSERT BulkTest 
FROM 'C:\Users\ÜK-G7\Downloads\Verzeichnis-PLZ-light.csv' 
WITH 
(
    FIELDTERMINATOR = ';', 
    ROWTERMINATOR = '\n',
    FIRSTROW = 2 , 
    CODEPAGE = 'RAW'

)