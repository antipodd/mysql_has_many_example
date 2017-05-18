USE school_db;

INSERT INTO
  classrooms (name, grade)
VALUES
  ('Math', '1st Grade'),
  ('Science', 'Kindergarten'),
  ('Language', '2nd')
;
  
INSERT INTO
  users (first_name, last_name, email)
VALUES
  ('Janet', 'Smith', 'janet@gmail.com'),
  ('John', 'Thompson', 'john@yahoo.com'),
  ('Jill', 'Roberts', 'jill@hotmail.com')
;
  
INSERT INTO
  classroom_users (user_id, classroom_id, role)
VALUES
  (1, 1, 'teacher'),
  (1, 3, 'helper'),
  (2, 2, 'teacher'),
  (2, 1, 'helper'),
  (3, 2, 'helper'),
  (3, 3, 'teacher')
;