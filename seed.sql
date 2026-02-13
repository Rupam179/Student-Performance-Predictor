-- Insert sample students
INSERT OR IGNORE INTO students (name, email, age) VALUES 
  ('Alice Johnson', 'alice@example.com', 16),
  ('Bob Smith', 'bob@example.com', 17),
  ('Charlie Brown', 'charlie@example.com', 15),
  ('Diana Prince', 'diana@example.com', 16),
  ('Ethan Hunt', 'ethan@example.com', 17);

-- Insert sample performance records
INSERT OR IGNORE INTO performance_records 
  (student_id, subject, math_score, reading_score, writing_score, study_hours, attendance_rate, previous_grade, extracurricular_activities, parent_education_level, predicted_score) 
VALUES 
  (1, 'Mathematics', 85, 78, 82, 5, 95, 80, 2, 'Bachelor', 85.5),
  (1, 'Science', 90, 85, 88, 6, 98, 85, 2, 'Bachelor', 89.2),
  (2, 'Mathematics', 72, 70, 68, 3, 85, 70, 1, 'High School', 71.5),
  (2, 'English', 78, 82, 80, 4, 90, 75, 1, 'High School', 79.8),
  (3, 'Mathematics', 95, 92, 90, 7, 100, 90, 3, 'Master', 93.5),
  (3, 'Science', 88, 85, 87, 5, 95, 85, 3, 'Master', 87.8),
  (4, 'English', 82, 88, 85, 4, 92, 80, 2, 'Bachelor', 84.2),
  (4, 'History', 75, 80, 78, 3, 88, 75, 2, 'Bachelor', 77.5),
  (5, 'Mathematics', 68, 65, 70, 2, 80, 65, 0, 'High School', 67.8),
  (5, 'Science', 70, 72, 68, 3, 82, 68, 0, 'High School', 70.2);
