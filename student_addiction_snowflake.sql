CREATE DATABASE STUDENT_ADDIC_DB;
USE DATABASE STUDENT_ADDIC_DB;

CREATE SCHEMA STUDENT_ADDIC_SC;
SELECT CURRENT_DATABASE(), CURRENT_SCHEMA();

CREATE OR REPLACE TABLE STUDENT_ADDIC_SC.STUDENT_ADDICTION (
  Student_ID INT,
  Age INT,
  Gender STRING,
  Academic_Level STRING,
  Country STRING,
  Avg_Daily_Usage_Hours FLOAT,
  Most_Used_Platform STRING,
  Affects_Academic_Performance STRING,
  Sleep_Hours_Per_Night FLOAT,
  Mental_Health_Score INT,
  Relationship_Status STRING,
  Conflicts_Over_Social_Media INT,
  Addicted_Score INT
);

SELECT COUNT(*) FROM STUDENT_ADDICTION;