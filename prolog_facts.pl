% Facts about courses
course(nepali, 'Nepali', 3).
course(maths, 'Maths', 4).
course(gk, 'General Knowledge', 3).
course(physics, 'Physics', 4).

% Facts about instructors
instructor(abisha_gautam, 'Abisha Gautam', nepali).
instructor(surya_waiba, 'Surya Waiba', maths).
instructor(soiksha_kc, 'Soiksha Kc', gk).
instructor(aayu_giri, 'Aayu Giri', physics).

% Facts about students
student(ram_panthi, 'Ram Panthi').
student(radhe_pandey, 'Radhe Pandey').
student(prithav_gautam, 'Prithav Gautam').
student(aayusha_singh, 'Aayusha Singh').

% Graduate Student Relationship
graduate_student(StudentName) :-
    student(StudentName, _).

% Defining faculty as a subclass of instructors
faculty(InstructorName) :-
    instructor(InstructorName, _, _).

% Relationship: Instructor teaches a Course
teaches(InstructorName, CourseCode) :-
    instructor(InstructorName, _, CourseCode).

% Additional Rule: List courses taught by a specific instructor
courses_taught_by(InstructorName, CourseList) :-
    findall(Course, teaches(InstructorName, Course), CourseList).
