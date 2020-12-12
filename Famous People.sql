/* Create table about the people and what they do here */


CREATE TABLE famous_people (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    name TEXT,
    age INTEGER, 
    gender TEXT);
    
INSERT INTO famous_people (name, age, gender) VALUES ("Niels",24, "men");
INSERT INTO famous_people (name, age, gender) VALUES ("Kay", 20, "women");
INSERT INTO famous_people (name, age, gender) VALUES ("Mark", 30, "men");
INSERT INTO famous_people (name,age, gender) VALUES ("Priscilla", 32,"women");
INSERT INTO famous_people (name,age, gender) VALUES ("Paul", 23, "men");
INSERT INTO famous_people (name, age, gender) VALUES ("Rafaelle",24,"women");
INSERT INTO famous_people (name, age, gender) VALUES ("Frank", 24, "men");
INSERT INTO famous_people (name, age, gender) VALUES ("Sandra", 25, "women");


    
    
CREATE TABLE movies_featured (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    movies_id INTEGER,
    title TEXT);
    
INSERT INTO movies_featured (movies_id, title) VALUES (1, "Titanic");
INSERT INTO movies_featured (movies_id, title) VALUES (2, "The way of the super man");
INSERT INTO movies_featured (movies_id, title) VALUES (3, "The social network");
INSERT INTO movies_featured (movies_id, title) VALUES (4, "Sex in the city");
INSERT INTO movies_featured (movies_id, title) VALUES (5, "Apocalypse");
INSERT INTO movies_featured (movies_id, title) VALUES (6,"Insanity");
INSERT INTO movies_featured (movies_id, title) VALUES (7,"Bulk");
INSERT INTO movies_featured (movies_id, title) VALUES (8, "Hopf vibration");




CREATE TABLE couples (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    couples_id1 INTEGER,
    couples_id2 INTEGER);

INSERT INTO couples (couples_id1, couples_id2) VALUES (1,2);
INSERT INTO couples (couples_id1, couples_id2) VALUES (3,4);
INSERT INTO couples (couples_id1, couples_id2) VALUES (5,6);
INSERT INTO couples (couples_id1, couples_id2) VALUES (7,8);

    
/*What movies are they in */

SELECT famous_people.name, movies_featured.title as movies_featured 

    FROM famous_people
    JOIN movies_featured 
    ON famous_people.id= movies_featured.movies_id;

/*Are they married to each other?*/

SELECT a.name as men, b.name as women from couples

    JOIN famous_people a
    ON couples.couples_id1= a.id
    JOIN famous_people b
    ON couples.couples_id2= b.id;
    
    
