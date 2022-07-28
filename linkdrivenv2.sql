--EXERCÍCIO 1
SELECT COUNT("endDate") AS "currentExperiences"  FROM experiences;

--EXERCÍCIO 2
SELECT "userId" AS id, COUNT("schoolId") AS educations FROM educations GROUP BY "userId";

--EXERCÍCIO 3
SELECT users.name AS name, COUNT(testimonials.id) AS "testimonialCount" FROM testimonials JOIN users ON testimonials."writerId" = users.id WHERE "writerId" = 435 GROUP BY users.name;

--EXERCÍCIO 4
SELECT MAX(jobs.salary) AS "maximumSalary", roles.name AS role FROM jobs JOIN roles ON jobs."roleId" = roles.id WHERE active = 'true' GROUP BY roles.name ORDER BY "maximumSalary";

--EXERCÍCIO BÔNUS
SELECT schools.name AS school, courses.name AS course, COUNT(educations."userId") AS "studentsCount", educations.status AS role FROM educations JOIN schools ON educations."schoolId" = schools.id JOIN courses ON educations."courseId" = courses.id  WHERE educations.status = 'ongoing' OR educations.status = 'finished' GROUP BY school, course, role ORDER BY "studentsCount" DESC LIMIT 3;
