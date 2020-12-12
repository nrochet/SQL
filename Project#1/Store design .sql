CREATE table Isotrex (id integer  primary key, name text, quantity integer, dimensions text, date_of_purchase text, price integer);

INSERT into Isotrex VALUES (1, "APC", 15, "L-6250 mm", "March 2019", 300000);

INSERT into Isotrex VALUES (2, "AR_15", 20, "610 mm", "February 14", 3000);

SELECT * from Isotrex

ORDER BY price;

SELECT SUM (price) from Isotrex;



