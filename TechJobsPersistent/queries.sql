--Part 1

--No idea what I'm supposed to do here, just list the columns and datatypes? I've also 
--included the simple SQL query, just in case.

SELECT 
TABLE_CATALOG,
TABLE_SCHEMA,
TABLE_NAME, 
COLUMN_NAME, 
DATA_TYPE 
FROM INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'jobs'

--Returns:
--int Id
--longtext Name
--int EmployerId

--Or another way:
--Jobs.Id = int
--Jobs.Name = longtext
--Jobs.EmployerId = int



--Part 2
SELECT name FROM Employers
WHERE Location="St. Louis City";



--Part 3
SELECT * FROM Skills
LEFT JOIN jobskills ON Skills.Id = JobSkills.SkillId
WHERE JobSkills.JobId IS NOT NULL
ORDER BY name ASC;