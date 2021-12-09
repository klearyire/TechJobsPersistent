--Part 1

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
SELECT Name FROM Employers
WHERE Location="St. Louis City";



--Part 3
SELECT * FROM Skills
LEFT JOIN jobskills ON Skills.Id = JobSkills.SkillId
WHERE JobSkills.JobId IS NOT NULL
ORDER BY Name ASC;