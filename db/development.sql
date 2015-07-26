BEGIN TRANSACTION;
CREATE TABLE "schema_migrations" ("version" varchar NOT NULL);
INSERT INTO `schema_migrations` VALUES ('20150723004724');
INSERT INTO `schema_migrations` VALUES ('20150724002124');
CREATE TABLE "countries" (
	`id`	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
	`name`	varchar,
	`created_at`	datetime NOT NULL,
	`updated_at`	datetime NOT NULL,
	`opinion_of_usa`	TEXT
);
INSERT INTO `countries` VALUES (1,'The United States of America','','','N/A');
INSERT INTO `countries` VALUES (2,'Mexico','2015-07-23 01:36:45.099812','2015-07-23 01:36:45.099812','Friendly');
INSERT INTO `countries` VALUES (3,'Canada','','','Very friendly');
INSERT INTO `countries` VALUES (4,'Iraq','','','It''s Complicated');
INSERT INTO `countries` VALUES (5,'Iran','','','Unfreindly');
INSERT INTO `countries` VALUES (6,'ISIS
','','','Very unfriendly');
CREATE UNIQUE INDEX "unique_schema_migrations" ON "schema_migrations" ("version");
COMMIT;
