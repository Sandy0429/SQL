/*
	Database Design
		Normilization
        Relationships
        Constraints
*/

-- Normalization
/*
	it is the process of efficiently organizing data in a database.
		why???
			to eliminate redundant data
            to only store related data in a table
		benefits
			reduce storage space
            reduce insert, update and delection anomalies
            improve query performance.alter
	Levels of normalization
		1Nf
        2Nf
        3Nf
        BCNF(Boyce and Codd normal form) or 4Nf
*/

/*
1Nf
	tables are in 1nf if
		no repeated rows of data
        columns only contain a single value
        the table has a primary key 
*/
/*
2Nf
	tables are in 2Nf if
		if it in 1Nf
        every column that is not a primary key of the table is dependent on the whole of primary key 
*/
/*
3Nf
	tables are in 3Nf if
		90% of time database will follow this normalization
        they conforms to 2Nf
        every column that is not a primary key is only dependent on the whole of the primary key.
*/

-- relationships
/*
	Tables are related through primary and foreign keys
		one to onr relation
        one to many relation
        many to many relation
*/
/*
	One to One
		least common type of relationship
        where a key to one table appears no more than once as the key in another table and vice versa
		
    One to Many
		most common relationship that you usually see
        where a primary key of one table can be in multiple rows of a foreign key column of another table
        ex orders and coustomers table
        
    Many to Many
		most complicated type of relationship and are as common as one to many
        where two table can have many instances of each other
        we create a junction table.
	 ex products & orders table 
*/

-- constraints
/*
	are placed on columns within table and are used to restrict what values can be entered into a column
    NOT NULL
    UNIQUE
    PRIMARY KEY
    FOREIGN KEY
    CHECK( Controls the values that can be inserted into a column
			ex check(ratings between0 and 100))
	DEFAULT( If no values is inserted into a column,you can set a defauly values
			 ex email DEFAULT 'No Data')
*/