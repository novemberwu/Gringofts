-- noinspection SqlNoDataSourceInspectionForFile

--sqlite3 app.db
--.read app.sql

CREATE TABLE IF NOT EXISTS COMMAND (
   ID           INTEGER PRIMARY KEY,
   TYPE         INTEGER NOT NULL,
   CREATEDTIME  INTEGER NOT NULL,
   CREATORID    INTEGER NOT NULL,
   GROUPID      INTEGER NOT NULL,
   GROUPVERSION INTEGER NOT NULL,
   PAYLOAD      TEXT
);

CREATE TABLE IF NOT EXISTS EVENT (
   ID           INTEGER PRIMARY KEY,
   TYPE         INTEGER NOT NULL,
   COMMANDID    INTEGER NOT NULL,
   CREATEDTIME  INTEGER NOT NULL,
   CREATORID    INTEGER NOT NULL,
   GROUPID      INTEGER NOT NULL,
   GROUPVERSION INTEGER NOT NULL,
   PAYLOAD      TEXT
);

--SELECT COUNT(ID) FROM EVENT; // @NOSONAR_START@
--DROP TABLE COMMAND;
--DROP TABLE EVENT;
--.fullschema // @NOSONAR_END@
