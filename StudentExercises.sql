CREATE TABLE Exercise (
	Id INTEGER Not Null PRIMARY KEY IDENTITY,
	[Name] TEXT Not Null, 
	[Language] TEXT Not Null
);
CREATE TABLE Cohort (
	Id INTEGER Not Null PRIMARY KEY IDENTITY,
	[Name] TEXT Not Null
);
CREATE TABLE Student (
	Id INTEGER Not Null PRIMARY KEY IDENTITY, 
	FirstName TEXT Not Null, 
	LastName TEXT Not Null, 
	SlackHandle TEXT Not Null,
	CohortId INTEGER Not Null,
	CONSTRAINT FK_StudentCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);
CREATE TABLE StudentExercise (
	Id INTEGER Not Null PRIMARY KEY IDENTITY,
	StudentId INTEGER Not Null,
	ExerciseId INTEGER Not Null, 
	CONSTRAINT FK_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
	CONSTRAINT FK_Exercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)
);
CREATE TABLE Instructor (
	Id Integer Not Null PRIMARY KEY IDENTITY,
	FirstName TEXT Not Null, 
	LastName TEXT Not Null, 
	SlackHandle TEXT Not Null, 
	CohortId INTEGER Not Null,
	CONSTRAINT FK_InstructorCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);


INSERT INTO Cohort ([Name])
VALUES ('Cohort 28');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 29');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 30');

INSERT INTO Student ([FirstName],[LastName],[SlackHandle], [CohortId])
VALUES ('Hunter', 'Metts', '@endlessSummerHD', 2);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Robby', 'Hect', '@music4life', 1);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Megan', 'Cruzen', '@supergirl99', 3);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Jordan', 'Rosas', '@polyglotcello', 1);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Brittany', 'Ramos-Janeway', '@itsbrittanyb', 2);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Cole', 'Bryant', '@theonlycoleslaw', 3);
INSERT INTO Student (FirstName,LastName, SlackHandle, CohortId)
VALUES ('Nick', 'Hansen', '@gummybearking', 1);

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Jisie', 'David', '@therealjisie', 3);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Leah', 'Gwin', '@leahgwin22', 3);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Andy', 'Collins', '@askingalot', 2);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Steve', 'Brownlee', '@steviebrown', 1);

INSERT INTO Exercise([Name], [Language])
VALUES ('Planets Exercise', 'C#' );
INSERT INTO Exercise([Name], [Language])
VALUES ('CarLot Exercise', 'React' );
INSERT INTO Exercise([Name], [Language])
VALUES ('Daily Journal Exercise', 'JavaScript' );
INSERT INTO Exercise([Name], [Language])
VALUES ('Departments Exercise', 'SQL' );

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (1, 1);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (1, 2);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (2, 2);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (2, 3);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (3, 3);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (3, 5);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (4, 5);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (4, 1);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (5, 1);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (5, 2);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (6, 2);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (6, 3);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (7, 3);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (7, 5);

