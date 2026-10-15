
--CREATE--

/*create a new table called persons
with columns:id,person_name,birth_date,phone*/
CREATE TABLE persons(
	id INT NOT NULL,
	person_name VARCHAR(50) NOT NULL,
	birth_date DATE,
	phone VARCHAR(15) NOT NULL,
	CONSTRAINT pk_persons PRIMARY KEY(id)
)

--ALTER--
 -- ADD A New column email to the persons table
 ALTER TABLE persons
 ADD email VARCHAR(50) NOT NULL

 SELECT * FROM persons

 -- remove the column phone from the persons table
  ALTER TABLE persons
  DROP COLUMN phone

   SELECT * FROM persons

   --DROP--
   --delete the table persons from the database
   DROP TABLE persons



