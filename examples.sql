-- Example of query to grab every instance of a user and their classrooms
-- A User has_many Classrooms  
USE school_db;
SELECT
  users.first_name,
  users.last_name,
  classroom_users.role,
  classrooms.name As classroom_name
FROM
  users
INNER JOIN
  classroom_users ON classroom_users.user_id = users.id
INNER JOIN
  classrooms ON classrooms.id = classroom_users.classroom_id
WHERE
  users.id = 1;
  
-- Example of query to grab every instance of a classroom and its users
-- A Classroom has_many Users 
USE school_db; 
SELECT
  classrooms.name,
  users.first_name,
  users.last_name,
  classroom_users.role
FROM
  classrooms
INNER JOIN
  classroom_users ON classroom_users.classroom_id = classrooms.id
INNER JOIN
  users ON users.id = classroom_users.user_id
WHERE
  classrooms.id = 1
  