CREATE TABLE bookings(
Customer_ID char(9), 
booking_Date date,
booking_Time time,
Booking_ID char(13) primary key,
Booking_Status varchar(30),
Vehicle_Type varchar(15),
Pickup_Location varchar(20),
Drop_Location varchar(20),
Canceled_Rides_by_Customer varchar(50),
Canceled_Rides_by_Driver varchar(40),
Incomplete_Rides varchar(10),
Incomplete_Rides_Reason varchar(20),
Booking_Value numeric,
Payment_Method varchar(30),
Ride_Distance int,
Driver_Ratings decimal(2,1),
Customer_Rating decimal(2,1)
);

select * from bookings;

--1 Retrive all Successful bookings:

CREATE VIEW Successfull_bookings AS
SELECT * FROM bookings 
WHERE booking_status = 'Success';

--2 Find the average ride distance for each vehicle type:

CREATE VIEW Ride_Distance AS  
SELECT vehicle_type , ROUND(AVG(ride_distance),2) AS Average_Distance
FROM bookings
GROUP BY 1
ORDER  BY 2 DESC;

--3 Get the total number of canceled rides by customers:

CREATE VIEW count_cancel_rides_by_customers as 
select count(*) as Canceled_ride_by_customers
from bookings
where booking_status ='Canceled by Customer';

--4 List the top 5 customers who booked the highest number of rides:
CREATE VIEW total_rides as
select customer_id , count(booking_id) as total_rides
from bookings 
group by 1 
order by 2 desc limit 5;

--5 Get the number of rides cancelled by drivers due to personal and car-related issues:
create view Ride_canceled_by_driver as
select count(*) as Canceled_by_driver
from bookings
where canceled_rides_by_driver ='Personal & Car related issue';

--6 Find the maximum and minimum driver ratings for Prime Sedan bookings:
Create view Prime_sedan_rating as
select max(driver_ratings) as max_rating,
	   min(driver_ratings) as min_rating
from bookings
where vehicle_type = 'Prime Sedan';

--7. Retrieve all rides where payment was made using UPI:
create view Payment_UPI as
select * from bookings
where payment_method = 'UPI';

--8. Find the average customer rating per vehicle type:
create view Average_customer_rating as
select vehicle_type , round(avg(customer_rating),2) as average_rating
from bookings 
group by 1;

--9. Calculate the total booking value of rides completed successfully:
create view total_success_bookings as
select sum(booking_value) as total_bookings
from bookings
where booking_status ='Success';

-- 10. List all incomplete rides along with the reason:
create view incomplete_rides as
select booking_id , incomplete_rides_reason
from bookings 
where incomplete_rides ='Yes';
