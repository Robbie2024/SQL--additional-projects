/* #1 Show Customers (their full names, customer ID, and country) who are not in the US. (Hint: != or <> can be used to say "is not equal to").
Select customerid,FirstName,LastName,Country
From chinook.customers
Where country <> "USA";
*/

/*#2 Show only the Customers from Brazil.
Select *
From chinook.customers
Where country = "Brazil";
*/

 
/* #3 Find the Invoices of customers who are from Brazil. The resulting table should show the customer's full name,Invoice ID, Date of the invoice, and billing country.
Select cust.Firstname,cust.Lastname, InvoiceId,InvoiceDate,BillingCountry
From chinook.invoices as inv
Left join chinook.customers as cust
on inv.customerId = cust.customerid
Where billingcountry = "Brazil";
*/

/* #4 Show the Employees who are Sales Agents. Sales Support Agent
Select *
From chinook.employees
Where Title = "Sales Support Agent"
*/

/* #5 Find a unique/distinct list of billing countries from the Invoice table.
Select Distinct BillingCountry 
From chinook.invoices
*/

/*#6 Provide a query that shows the invoices associated with each sales agent. The resulting table should include the Sales Agent's full name.
Select InvoiceId,empl.Firstname,empl.LastName
From chinook.invoices as inv
inner join chinook.customers as cust 
on inv.customerid = cust.customerid
inner join chinook.employees as empl
on cust.supportrepid = empl.employeeid
order by invoiceid ;
*/

/*#7 Show the Invoice Total, Customer name, Country, and Sales Agent name for all invoices and customers.
Select cust.FirstName,cust.LastName,empl.FirstName as SalesAgent_FirstName ,empl.LastName as SalesAgent_LastName,BillingCountry,total 
From chinook.invoices as inv
inner join chinook.customers as cust
on inv.customerid = cust.customerid
inner join chinook.employees as empl
on cust.supportrepid = empl.employeeid
*/

/* #8 How many Invoices were there in 2009?
Select count(*) as Num_of_invoices
From chinook.invoices
Where InvoiceDate Between '2009-01-01' AND '2009-12-31'
*/

/* #9 What are the total sales for 2009?
Select round(sum(Total),2) as total_sales_2009
From chinook.invoices
Where InvoiceDate Between '2009-01-01' AND '2009-12-31'
*/

/* #10 Write a query that includes the purchased track name with each invoice line ID.
Select items.Invoicelineid, tra.Name
From chinook.invoice_items as items
join chinook.tracks as tra
on items.trackid = tra.trackid 
*/

/*#11 Write a query that includes the purchased track name AND artist name with each invoice line ID.
Select i.invoicelineid, tra.name as Track_name, art.name as Artis_name
From chinook.invoice_items as i
inner join chinook.tracks as tra
on i.trackid = tra.trackid 
inner join chinook.albums as alb
on tra.albumid = alb.albumid
inner join chinook.artists as art
on alb.artistid = art.artistid
*/

/* #12 Provide a query that shows all the Tracks, and include the Album name, Media type, and Genre.
Select tra.name as Track,alb.title as Album_Name ,med.name as Media_type ,gen.name as Genre
From chinook.tracks as tra
 join chinook.albums as alb
on tra.albumid = alb.albumid 
 join chinook.media_types as med
on tra.mediatypeid = med.mediatypeid
 join chinook.genres as gen
on tra.genreid = gen.genreid 
*/

/* #13 Show the total sales made by each sales agent
Select emp.Firstname, emp.LastName, Round(Sum(inv.total),2) as 'Total Sales' 
From chinook.employees as emp
inner join chinook.customers as cust
on emp.employeeid = cust.supportrepid
inner join chinook.invoices as inv
on cust.customerid = inv.customerid 
Where Title = 'Sales Support Agent'
group by emp.Firstname 
*/

/* #14 Which sales agent made the most dollars in sales in 2009?

Select emp.Firstname, emp.LastName,Round(Sum(inv.total),2) as 'Total Sales' 

From chinook.invoices as inv

inner join chinook.customers as cust
on inv.customerid = cust.customerid

inner join chinook.employees as emp
on cust.supportrepid = emp.employeeid  

Where invoicedate like '2009%'
group by emp.Firstname
order by Round(Sum(inv.total),2) desc
limit 1;

*/
