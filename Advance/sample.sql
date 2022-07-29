/* 
  Delivery Partner details based on rating

Write a query to display partner id, partner name, phone number of delivery partners whose rating is between 3 to 5, sort the result based on partner id.
*/

SELECT partner_id, partner_name, phone_no FROM delivery_partners
 WHERE rating BETWEEN 3 AND 5;
