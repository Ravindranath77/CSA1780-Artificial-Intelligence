% Facts: student_teacher(Student, Teacher, SubjectCode).
student_teacher('Alice', 'Mr. Smith', 'MATH101').
student_teacher('Bob', 'Ms. Johnson', 'ENG102').
student_teacher('Charlie', 'Mr. Smith', 'MATH101').
student_teacher('Diana', 'Ms. Johnson', 'ENG102').
student_teacher('Eve', 'Dr. Brown', 'SCI103').

% Rule to find the teacher for a given student
find_teacher(Student, Teacher) :-
    student_teacher(Student, Teacher, _).

% Rule to find all students taught by a given teacher
students_by_teacher(Teacher, Students) :-
    findall(Student, student_teacher(Student, Teacher, _), Students).

% Rule to find the subject code for a given student
find_subject_code(Student, SubjectCode) :-
    student_teacher(Student, _, SubjectCode).
