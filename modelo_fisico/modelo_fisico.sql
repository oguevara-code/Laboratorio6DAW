
-- Creando las tablas

CREATE TABLE students (
    id SERIAL PRIMARY KEY,
    names VARCHAR(100),
    fatherSurname VARCHAR(100),
    motherSurname VARCHAR(100),
    email VARCHAR(100),
    career VARCHAR(100),
    status BOOLEAN,
    created TIMESTAMP,
    modified TIMESTAMP,
    created_id INT,
    modified_id INT
);

CREATE TABLE courses (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    credits INT,
    cycle INT,
    status BOOLEAN,
    created TIMESTAMP,
    modified TIMESTAMP,
    created_id INT,
    modified_id INT
);

CREATE TABLE enrollments (
    id SERIAL PRIMARY KEY,
    semester VARCHAR(20),
    date DATE,
    students_id INT,
    status BOOLEAN,
    created TIMESTAMP,
    modified TIMESTAMP,
    created_id INT,
    modified_id INT,

    FOREIGN KEY (students_id)
    REFERENCES students(id)
);

CREATE TABLE courses_enrollments (
    id SERIAL PRIMARY KEY,
    courses_id INT,
    enrollments_id INT,
    grade DECIMAL(5,2),
    observation VARCHAR(255),
    status BOOLEAN,
    created TIMESTAMP,
    modified TIMESTAMP,
    created_id INT,
    modified_id INT,

    FOREIGN KEY (courses_id)
    REFERENCES courses(id),

    FOREIGN KEY (enrollments_id)
    REFERENCES enrollments(id)
);

-- Insertando valores

INSERT INTO students (
    names,
    fatherSurname,
    motherSurname,
    email,
    career,
    status,
    created,
    modified,
    created_id,
    modified_id
)
VALUES (
    'Omar',
    'Guevara',
    'Aliaga',
    'oguevara@unsa.edu.pe',
    'Ingenieria de sistemas',
    true,
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP,
    1,
    1
);

INSERT INTO courses (
    name,
    credits,
    cycle,
    status,
    created,
    modified,
    created_id,
    modified_id
)
VALUES (
    'Desarrollo de aplicacion web',
    4,
    3,
    TRUE,
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP,
    1,
    1
);

INSERT INTO enrollments (
    semester,
    date,
    students_id,
    status,
    created,
    modified,
    created_id,
    modified_id
)
VALUES (
    '2026-I',
    CURRENT_DATE,
    1,
    true,
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP,
    1,
    1
);

INSERT INTO courses_enrollments (
    courses_id,
    enrollments_id,
    grade,
    observation,
    status,
    created,
    modified,
    created_id,
    modified_id
)
VALUES (
    1,
    1,
    18.5,
    'Approved',
    true,
    CURRENT_TIMESTAMP,
    CURRENT_TIMESTAMP,
    1,
    1
);

SELECT * FROM students;
SELECT * FROM courses;
SELECT * FROM enrollments;
SELECT * FROM courses_enrollments;