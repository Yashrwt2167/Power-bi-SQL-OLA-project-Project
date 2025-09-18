# Sql-Power-bi-OLA-project-Project
This project analyzes OLA ride booking data using SQL for querying and Power BI for visualization.
The goal is to uncover insights into customer behavior, ride trends, cancellations, revenues, and ratings.

🗂️ Dataset Description

The dataset contains detailed information about OLA ride bookings with the following columns:

Booking_ID – Unique ride identifier

Date, Time – When the ride was booked

Customer_ID – Unique customer identifier

Booking_Status – Success, Cancelled by Customer, Cancelled by Driver, Incomplete

Vehicle_Type – Auto, Mini, Prime Sedan, Prime SUV, etc.

Pickup & Drop Location – Ride locations

Cancelled Rides by Customer / Driver – Cancellation tracking

Incomplete Rides & Reason – Ride not completed details

Booking_Value – Revenue from the ride

Payment_Method – UPI, Cash, Credit Card, etc.

Ride_Distance – Distance traveled

Driver_Ratings & Customer_Rating – Feedback system

🔍 SQL Analysis

Some key business questions solved using SQL:

Retrieve all successful bookings

Find the average ride distance for each vehicle type

Count total rides cancelled by customers

Identify Top 5 customers with the highest bookings

Analyze driver cancellations due to personal or car-related issues

Find min/max driver ratings for Prime Sedan

Get rides paid via UPI

Average customer rating per vehicle type

Calculate total booking value for successful rides

List incomplete rides with their reasons

📊 Power BI Dashboard

The Power BI dashboard provides interactive insights across multiple perspectives:

1. Overall Trends

Ride Volume Over Time (time-series trends)

Booking Status Breakdown (success vs. cancellations)

2. Vehicle Analysis

Top 5 Vehicle Types by Ride Distance

Average Customer Ratings by Vehicle Type

3. Revenue Insights

Revenue by Payment Method

Top 5 Customers by Total Booking Value

Ride Distance Distribution Per Day

4. Cancellation Analysis

Cancellation Reasons (Customers vs. Drivers)

5. Ratings

Driver Ratings Distribution

Customer Ratings Distribution

Customer vs. Driver Ratings (correlation analysis)

🛠️ Tools & Technologies

SQL – Data querying & analysis

Power BI – Data visualization & dashboard creation

Excel/CSV – Data source

📌 Key Insights

Customers prefer UPI & Cash as payment methods

Certain vehicle types (e.g., Prime Sedan) receive higher ratings

Driver and customer cancellations significantly affect revenue

A small percentage of customers contribute to a large portion of revenue (Pareto principle)

🚀 How to Use

Clone this repository

Import the dataset into your SQL environment

Run the provided queries for analysis

Open the Power BI file (.pbix) to explore dashboards

📷 Dashboard Preview

(Add screenshots of your Power BI dashboard here)

📚 Learnings

Writing optimized SQL queries for business use cases

Building interactive dashboards with Power BI

Deriving actionable insights from raw data
