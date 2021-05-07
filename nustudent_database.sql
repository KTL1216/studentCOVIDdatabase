/* Creating Database */
create database if not exists nustudent;

use nustudent;

create table clubtype(
typeofclub varchar(64) primary key,
weeklyfrequency int,
inperson varchar(64)
);

INSERT INTO clubtype (typeofclub, weeklyfrequency, inperson)
VALUES ('Sports', 3, 'yes'), 
('Educational', 2, 'no'),
('Social', 1, 'yes');

SELECT * FROM clubtype;

create table major(
nameofmajor varchar(64) primary key,
college varchar(64) not null
);

INSERT INTO major (nameofmajor, college)
VALUES ('Computer Science', 'Khoury'),
('Business', 'D’Amore-McKim'),
('Engineering', 'CoE'),
('Health Science', 'Bouve'),
('Arts, Media, and Design', 'College of Arts'),
('Law', 'School of Law'),
('Science', 'College of Science'),
('Social Science and Humanities', 'College of Social Sciences and Humanities');

SELECT * FROM major;

create table homestate(
nameofstate varchar(64) primary key,
totalcovidcases int not null,
population int not null
);
INSERT INTO homestate (nameofstate, totalcovidcases, population)
VALUES ('Alaska', 65390, 582328),
('Alabama', 552000, 4921532),
('Arizona', 65390, 731158),
('Arkansas', 333000, 3030522),
('California', 3720000, 39368078),
('Colorado', 492000, 5807719),
('Connecticut', 329000, 3557006),
('Delaware', 101000, 986809),
('Florida', 2170000, 21733312),
('Georgia', 1060000, 10710017),
('Hawaii', 31715, 1407006),
('Idaho', 185000, 1826913),
('Illinois', 1310000, 12587530),
('Indiana', 711000, 6754953),
('Iowa', 360000, 3163561),
('Kansas', 308000, 2913805),
('Kentucky', 441000, 4477251),
('Louisiana', 452000, 4645318),
('Maine', 57285, 1350141),
('Maryland', 436000, 6055802),
('Massachusetts', 673000, 6893574),
('Michigan', 873000, 9966555),
('Minnesota', 556000, 5657342),
('Mississippi', 309000, 2966786),
('Missouri', 589000, 6151548),
('Montana', 107000, 1080577),
('Nebraska', 216000, 1937552),
('Nevada', 310000, 3138259),
('New Hampshire', 91586, 1366275),
('New Jersey', 979000, 8882371),
('New Mexico', 195000, 2106319),
('New York', 2000000, 19336776),
('North Carolina', 950000, 10600823),
('North Dakota', 106000, 765309),
('Ohio', 1050000, 11693217),
('Oklahoma', 445000, 3980783),
('Oregon', 175000, 4241507),
('Pennsylvania', 1110000, 12783254),
('Rhode Island', 144000, 1057125),
('South Carolina', 569000, 5218040),
('South Dakota', 121000, 892717),
('Tennessee', 816000, 6886834),
('Texas', 2850000, 29360759),
('Utah', 393000, 3249879),
('Vermont', 22016, 623347),
('Virginia', 646000, 8590563),
('Washington', 387000, 7693612),
('West Virginia', 149000, 1784787),
('Wisconsin', 652000, 5832655),
('Wyoming', 57267, 582328),
("Other", 0, 0);

SELECT * FROM homestate;

create table housing(
housingname varchar(64) primary key,
roomsize int not null
);

INSERT INTO housing (housingname, roomsize)
VALUES ("Dorm Double", 2),
("Dorm Single", 1),
("Dorm Suite", 4),
("LP Double", 2),
("LP Single", 1),
("LP Suite", 4),
("Off Campus Double", 2),
("Off Campus Single", 1),
("Off Campus Suite", 4);

SELECT * FROM housing;

create table gym(
gymname varchar(64) primary key,
capacity int not null
);

INSERT INTO gym (gymname, capacity)
VALUES ("Marino", 170),
("SquashBusters", 110),
("Do not go to gym", 0);

SELECT * FROM gym;

create table dininghall(
dininghallname varchar(64) primary key,
capacity int not null
);

INSERT INTO dininghall (dininghallname, capacity)
VALUES ("Stetson East", 210),
("International Village", 260),
("Self cooking", 2);

SELECT * from dininghall;

create table student(
nuid int primary key,
studentname varchar (64) not null,
housing varchar(64) not null,
state varchar(64) not null,
major varchar(64) not null,
dining varchar(64),
club varchar(64),
gym varchar(64),
covidDate date not null,
contact varchar(64) not null,
constraint student_housingname_fk1 foreign key (housing)
references housing(housingname) on update restrict on delete restrict,
constraint student_homestate_fk1 foreign key (state)
references homestate(nameofstate) on update restrict on delete restrict,
constraint student_major_fk1 foreign key (major)
references major(nameofmajor) on update restrict on delete restrict,
constraint student_dininghallpref_fk1 foreign key (dining)
references dininghall(dininghallname) on update restrict on delete restrict,
constraint student_clubtype_fk1 foreign key (club)
references clubtype(typeofclub) on update restrict on delete restrict,
constraint student_gympref_fk1 foreign key (gym)
references gym(gymname) on update restrict on delete restrict
);

select * from student;