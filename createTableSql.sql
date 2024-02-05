CREATE TABLE Director (
    id_Director INT PRIMARY KEY,
    lastName VARCHAR(255),
    firstName VARCHAR(255)
);

CREATE TABLE Actor (
    id_Actor INT PRIMARY KEY,
    lastName VARCHAR(255),
    firstName VARCHAR(255),
    birthDate DATE
);

CREATE TABLE Movie (
    id_Movie INT PRIMARY KEY,
    title VARCHAR(255),
    duration INT,
    releaseYear INT,
    id_Director INT,
    FOREIGN KEY (id_Director) REFERENCES Director(id_Director)
);

CREATE TABLE User (
    id_User INT PRIMARY KEY,
    lastName VARCHAR(255),
    firstName VARCHAR(255),
    email VARCHAR(255) UNIQUE,
    password VARCHAR(255),
    role VARCHAR(50)
);

CREATE TABLE Plays (
    id_Actor INT,
    id_Movie INT,
    role VARCHAR(255),
    PRIMARY KEY (id_Actor, id_Movie),
    FOREIGN KEY (id_Actor) REFERENCES Actor(id_Actor),
    FOREIGN KEY (id_Movie) REFERENCES Movie(id_Movie)
);

CREATE TABLE Preference (
    id_User INT,
    id_Movie INT,
    PRIMARY KEY (id_User, id_Movie),
    FOREIGN KEY (id_User) REFERENCES User(id_User),
    FOREIGN KEY (id_Movie) REFERENCES Movie(id_Movie)
);
