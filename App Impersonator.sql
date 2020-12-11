/* What does the app's SQL look like? */

CREATE TABLE health (
    id INTEGER PRIMARY KEY AUTOINCREMENT, 
    heart_rate INTEGER, 
    day TEXT);

INSERT INTO health (heart_rate, day) 
    VALUES (160, "Monday");

INSERT INTO health (heart_rate, day) 
    VALUES (150, "Tuesday");

INSERT INTO health (heart_rate, day) 
    VALUES (170, "Wednesday");
    

UPDATE health SET day= "Friday" where id=1;

SELECT * FROM health;

DELETE FROM health where id=1;

SELECT * FROM health;




    

