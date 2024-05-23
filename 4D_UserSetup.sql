INSERT INTO fda."Organization"("OrganizationName","OrganizationType","GitHubInd") values ('PartnerRe','ENTERPRISE','Y'); 
-------------------------------------------------------
SELECT fda."Proc_CreateUser"( 
'4DALERT@PartnerRe.com',--"UserName",**
'12345',--"UserPassword",** 
'4DALERT@PartnerRe.com',--"UserEmail",**
'4D',--"UserFirstname",**
'Alert',--"UserLastname",**
'PartnerRe',--"OrgName",**
'',--"UserMidname",
'',--"UserPhotoId",
'',--"UserStatus",
'',--"AccessToken",
'',--"RefreshToken",
'',--"AccessTokenExpiration", '',--"UserJoinDate",
'',--"UserLastLogin",
'',--"UserAddress",
'',--"UserCity",
'',--"UserState",
'0000',--"UserZipcode",**
'',--"UserCountry",
'',--"GitHubInd",
'',--"QueryTitle",
'',--"Query",
'',--"Phone",
'Snowflake',--"UserSystemName"
 'R1');
FETCH ALL IN "R1";
-----------------------------------------------------------
INSERT INTO
fda."FDAApplications"("ApplicationCode","ApplicationName","ApplicationShortname","ApplicationOwnerEmail")
VALUES ('4DALERT','4DALERT','4DALERT ','4DALERT@PartnerRe.com');
-----------------------------------------------------------
insert into fda."FDAModuleByOrg"("FDAModuleByOrgId","OrganizationId","ModuleName") 
values(1,1,'FDALERT-DATAQUALITY'),(2,1,'FDALERT-APPCONFIG-DATAQUALITY'),(3,1,'FDALERT-DATAOPS'),(4,1,'FDALERT-DATAMODELING');
--------------------------------------------------------------
UPDATE fda."UserRoleDetails_v2"
SET "UserRole" = 'FDALERT-SUPERUSER';

