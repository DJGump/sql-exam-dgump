-- 1
SELECT 
   table_name, 
   column_name, 
   data_type 
FROM 
   information_schema.columns
WHERE 
   table_name = 'naep';
   
-- 2
SELECT *
FROM NAEP 
LIMIT 50;

--3
SELECT state
	   ,COUNT(*)
	   ,AVG(avg_math_4_score) AS avg_avg_math4
	   ,MIN(avg_math_4_score) AS MIN_avg_math4
	   ,MAX(avg_math_4_score) AS max_avg_math4
FROM naep
GROUP BY state
ORDER BY state ASC;

-- 4
SELECT state
	   ,COUNT(*)
	   ,AVG(avg_math_4_score) AS avg_avg_math4
	   ,MIN(avg_math_4_score) AS MIN_avg_math4
	   ,MAX(avg_math_4_score) AS max_avg_math4
FROM naep
GROUP BY state
HAVING MAX(avg_math_4_score) - MIN(avg_math_4_score) > 30
ORDER BY state ASC;

-- 5
SELECT state AS bottom_10_states
	   ,avg_math_4_score
FROM naep
WHERE year = 2000
ORDER BY avg_math_4_score ASC
LIMIT 10;

-- 6
SELECT ROUND(AVG(avg_math_4_score), 2) AS avg_math4_2000
FROM naep
WHERE year = 2000;

-- 7
SELECT state AS below_average_states_y2000
FROM naep
WHERE 



