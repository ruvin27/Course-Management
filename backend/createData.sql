-- Truncate all tables to delete all records and reset auto_increment
TRUNCATE TABLE enrollment;
TRUNCATE TABLE objectives;
TRUNCATE TABLE exam_resolution;
TRUNCATE TABLE recommendation;
TRUNCATE TABLE messages;
TRUNCATE TABLE comments;
TRUNCATE TABLE grades;
TRUNCATE TABLE question;
TRUNCATE TABLE exam;
TRUNCATE TABLE course;
TRUNCATE TABLE program;
TRUNCATE TABLE user;
TRUNCATE TABLE qa_policies;
TRUNCATE TABLE ColorTable;

-- Insert 1 record for an instructor and a student in the 'user' table
INSERT INTO user (email, role, name, password, phone_number, verification_code, email_verified_at)
VALUES ('instructor@app.com', 'Instructor', 'John Doe', '$2y$10$sfltmQxzMmWfrgD8k7PXI.dV5eoZltnKOtZoa528NfiHMiaX08OyC',
        '123-456-7890', 'SAMPLECODE', CURRENT_DATE),
       ('student@app.com', 'Student', 'Jane Doe', '$2y$10$sfltmQxzMmWfrgD8k7PXI.dV5eoZltnKOtZoa528NfiHMiaX08OyC',
        '123-456-7891', 'SAMPLECODE', CURRENT_DATE);

-- Insert 1 record in the 'program' table
INSERT INTO program (program_name, description)
VALUES ('Computer Science', 'Study of computation and information.');

-- Insert 1 record in the 'course' table
INSERT INTO course (description, name, code, start_date, end_date, objective, program_id, instructor_id)
VALUES ('Introductory course to programming.', 'Introduction to Programming', 'CS101', CURRENT_DATE, CURRENT_DATE,
        'Sample objective', 1, 1);

-- Insert 1 record in the 'exam' table
INSERT INTO exam (course_id, exam_duration, date, description, score, exam_title)
VALUES (1, 90, CURRENT_DATE, 'Mid-term examination.', 100, 'Mid-Term');

-- Insert 1 record in the 'question' table
INSERT INTO question (exam_id, question, answer, mcq1, mcq2, mcq3, mcq4)
VALUES (1, 'Which language is used for web apps?', 'PHP', 'PHP', 'Python', 'JavaScript', 'Java');

-- Insert 1 record in the 'grades' table
INSERT INTO grades (exam_id, course_id, student_id, date, score)
VALUES (1,1, 2, CURRENT_DATE, 95);

-- Insert 1 record in the 'comments' table
INSERT INTO comments (student_id, course_id, timestamp, message)
VALUES (2, 1, CURRENT_TIMESTAMP, 'Great course!');

-- Insert 1 record in the 'enrollment' table
INSERT INTO enrollment (student_id, course_id)
VALUES (2, 1);

-- Insert 1 record in the 'exam_resolution' table
INSERT INTO exam_resolution (exam_id, qa_officer_resolved, program_coordinator_resolved)
VALUES (1, 1, 1);

-- Insert 1 record in the 'qa_policies' table
INSERT INTO qa_policies (policies)
VALUES ('Sample QA policy.');

-- Insert 1 record in the 'ColorTable' table
INSERT INTO ColorTable (usedFor, hexColor, description)
VALUES ('Header', '#FFFFFF', 'White color for header.');

-- Insert 1 record in the 'objectives' table
INSERT INTO objectives (program_id, objective)
VALUES (1, 'To provide a comprehensive understanding of computer science.');

-- Insert 1 record in the 'recommendation' table
INSERT INTO recommendation (course_id, message, sender_id)
VALUES (1, 'Highly recommended for beginners.', 1);

-- Insert 1 record in the 'messages' table
INSERT INTO messages (sender, receiver, message)
VALUES ('instructor@app.com', 'student@app.com', 'Welcome to the course.');

COMMIT;
