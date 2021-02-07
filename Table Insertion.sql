--Insert data into user table
INSERT INTO userTable VALUES('PranavKR','pkottoli@syr.edu','3157778977','password1');
INSERT INTO userTable VALUES('BojackHorseman','bjack@gmail.com',NULL,'password2');
INSERT INTO userTable VALUES('RickSanchez','Rsanchez@gmail.com','3156809600','password3');

--Insert data into Features table
INSERT INTO Features VALUES('Feature1','4K');
INSERT INTO Features VALUES('Feature2','Upto 4 Screens');
INSERT INTO Features VALUES('Feature3','SD');
INSERT INTO Features VALUES('Feature4','HD');
INSERT INTO Features VALUES('Feature5','Upto 2 Screens');
INSERT INTO Features VALUES('Feature6','Only 1 Screen at a time');
INSERT INTO Features VALUES('Feature7','With Ads');
INSERT INTO Features VALUES('Feature8','Ad Free');

--Insert data into Genre table
INSERT INTO Genre VALUES('Action','A Genre in which the protagonist or protagonists are thrust into a series of events that typically include violence, extended fighting, physical feats, and frantic chases.');
INSERT INTO Genre VALUES('Comedy','A Genre in which the main emphasis is on humor.');
INSERT INTO Genre VALUES('Documentary','A Genre which intends to document reality.');
INSERT INTO Genre VALUES('Drama','A Genre intended to be more serious than humorous in tone.');

--Insert data into Content table
INSERT INTO Content VALUES('Content1','There Will Be Blood','Movie');
INSERT INTO Content VALUES('Content2','Boogie Nights','Movie');
INSERT INTO Content VALUES('Content3','Punch Drunk Love','Movie');
INSERT INTO Content VALUES('Content4','The Wire','Series');
INSERT INTO Content VALUES('Content5','Arrested Development','Series');
INSERT INTO Content VALUES('Content6','The Act of Killing','Movie');
INSERT INTO Content VALUES('Content7','The Raid: Redemption','Movie');
INSERT INTO Content VALUES('Content8','GLOW','Series');

--Insert data into StreamingService table
INSERT INTO StreamingService VALUES('Netflix','https://www.netflix.com/',NULL);
INSERT INTO StreamingService VALUES('Hulu','https://www.hulu.com/welcome',NULL);
INSERT INTO StreamingService VALUES('Amazon Prime','https://www.amazon.com/Prime-Video/b?ie=UTF8&node=2676882011',NULL);

--Insert data into GenreContent table
INSERT INTO GenreContent VALUES('GenreContent1','Content1','Drama');
INSERT INTO GenreContent VALUES('GenreContent2','Content2','Drama');
INSERT INTO GenreContent VALUES('GenreContent3','Content3','Drama');
INSERT INTO GenreContent VALUES('GenreContent4','Content3','Comedy');
INSERT INTO GenreContent VALUES('GenreContent5','Content4','Drama');
INSERT INTO GenreContent VALUES('GenreContent6','Content5','Comedy');
INSERT INTO GenreContent VALUES('GenreContent7','Content6','Documentary');
INSERT INTO GenreContent VALUES('GenreContent8','Content7','Action');
INSERT INTO GenreContent VALUES('GenreContent9','Content8','Comedy');
INSERT INTO GenreContent VALUES('GenreContent10','Content8','Drama');

--Insert data into ServiceContent table
INSERT INTO ServiceContent VALUES('ServiceContent1','Netflix','Content1','False');
INSERT INTO ServiceContent VALUES('ServiceContent2','Netflix','Content8','True');
INSERT INTO ServiceContent VALUES('ServiceContent3','Hulu','Content1','False');
INSERT INTO ServiceContent VALUES('ServiceContent4','Hulu','Content2','False');
INSERT INTO ServiceContent VALUES('ServiceContent5','Hulu','Content3','False');
INSERT INTO ServiceContent VALUES('ServiceContent6','Amazon Prime','Content3','False');
INSERT INTO ServiceContent VALUES('ServiceContent7','Amazon Prime','Content4','False');
INSERT INTO ServiceContent VALUES('ServiceContent8','Amazon Prime','Content5','False');
INSERT INTO ServiceContent VALUES('ServiceContent9','Netflix','Content6','False');
INSERT INTO ServiceContent VALUES('ServiceContent10','Hulu','Content6','False');
INSERT INTO ServiceContent VALUES('ServiceContent11','Netflix','Content7','False');

--Insert data into PlanTable table
INSERT INTO PlanTable VALUES('Plan1','Basic',12.99,'Netflix');
INSERT INTO PlanTable VALUES('Plan2','Standard',8.99,'Netflix');
INSERT INTO PlanTable VALUES('Plan3','Premium',15.99,'Netflix');
INSERT INTO PlanTable VALUES('Plan4','HULU',5.99,'Hulu');
INSERT INTO PlanTable VALUES('Plan5','HULU(No Ads)',11.99,'Hulu');
INSERT INTO PlanTable VALUES('Plan6',NULL,12.99,'Amazon Prime');

--Insert data into FeaturePlan table
INSERT INTO FeaturePlan VALUES('FeaturePlan1','Plan1','Feature3');
INSERT INTO FeaturePlan VALUES('FeaturePlan2','Plan1','Feature6');
INSERT INTO FeaturePlan VALUES('FeaturePlan3','Plan2','Feature4');
INSERT INTO FeaturePlan VALUES('FeaturePlan4','Plan2','Feature5');
INSERT INTO FeaturePlan VALUES('FeaturePlan5','Plan3','Feature1');
INSERT INTO FeaturePlan VALUES('FeaturePlan6','Plan3','Feature2');
INSERT INTO FeaturePlan VALUES('FeaturePlan7','Plan4','Feature7');
INSERT INTO FeaturePlan VALUES('FeaturePlan8','Plan5','Feature8');
INSERT INTO FeaturePlan VALUES('FeaturePlan9','Plan6','Feature2');

--Insert data into Review table
INSERT INTO Review VALUES('Review1',5.0,NULL,'Netflix','PranavKR');
INSERT INTO Review VALUES('Review2',5.0,'Best Streaming Service out there. Worth it for the originals alone','Netflix','BojackHorseman');
INSERT INTO Review VALUES('Review3',4.0,NULL,'Amazon Prime','RickSanchez');
INSERT INTO Review VALUES('Review4',1.0,'Awful, Could not log in to my account. No response from customer service.','Amazon Prime','PranavKR');
INSERT INTO Review VALUES('Review5',5.0,NULL,'Hulu','PranavKR');
INSERT INTO Review VALUES('Review6',2.0,NULL,'Hulu','BojackHorseman');