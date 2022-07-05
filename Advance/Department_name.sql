/* Department name based on block number

Write a query to display the names of the departments in block number 3. Sort the records in ascending order.*/

Select department_name FROM Department WHERE department_block_number = 3 ORDER BY  department_name ASC;