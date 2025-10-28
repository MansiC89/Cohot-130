USE cohort130;
select * from tips;
select * from tips where tip > 5 and total_bill<25;
---Get all records where the customer is female and visited during Dinner time.
select * from tips where sex = 'Female' and time = 'Dinner';
---Show all entries where the size of the group is greater than or equal to 4 and day = 'Sat'.
select * from tips where size>= 4 and day = 'sat';
---Retrieve the top 10 highest total bills using the ORDER BY and LIMIT clauses.
select * from tips order by total_bill desc limit 10;
---Display the 5 lowest tips given on Fridays using ORDER BY and LIMIT.
select * from tips where day = 'Fri'order by tip asc limit 5;
---Fetch all rows where the tip is between 3 and 6 and the customer is not a smoker.
select * from tips where tip between 3 and 6 and smoker = 'no';
---List the first 10 rows, then use OFFSET to display the next 10 rows (rows 11–20).
select * from tips limit 10;
select * from tips limit 10 offset 10;
---Retrieve all records where the total bill exceeds 40, order them by tip in descending order, and show only the top 5 results.
select * from tips where total_bill>40 order by tip desc limit 5;
---Get all records where the time is Lunch and the tip is greater than 20% of the total bill (use a calculated condition in the WHERE clause).
select * from tips where time = 'Lunch' and tip > 0.2*total_bill;
---Find the total number of records in the tips table.
SELECT COUNT(*) AS total_records FROM tips;
---Calculate the total sum of tips given by all customers.
select sum(tip) as total_tip from tips;
---Find the average total bill amount.
select avg(total_bill) as total_avg from tips;
---Determine the maximum tip and minimum tip from the dataset.
select max(tip) as maximum_tip, min(tip) minimum_tip from tips;
---Calculate the average tip given by male and female customers separately.
select sex, avg(tip) as avg_tip from tips group by sex;
---Find the total number of smokers and non-smokers.
select smoker, count(*) as tips group by smoker;
---Compute the average total bill per day (group by day).
select day, avg(total_bill) as avg_tota_bill from tips group by day;
---Find the total tip amount per day and sort the result in descending order of total tips.
select day, sum(tip) as total_tip_per_day from tips group by day order by total_tip_per_day desc;
---Determine the average tip percentage (tip / total_bill * 100) for each day.
select day, avg(tip/total_bill*100) as avg_tip_per from tips group by day;
---Calculate the average party size for each day and time combination.
select day, time, avg(size) as avg_p_size from tips group by day, time order by day, time;
