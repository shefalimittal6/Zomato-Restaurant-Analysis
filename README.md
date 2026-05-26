🍽️ Zomato Restaurant Data Analysis Project
📌 Overview

This project performs Exploratory Data Analysis (EDA) on Zomato restaurant data using Python and SQL.
The goal is to uncover insights about restaurant distribution, customer preferences, pricing trends, and ratings across different cities.

It helps understand real-world food industry patterns using data-driven techniques.

🎯 Objectives
Analyze restaurant distribution across cities
Study customer rating behavior
Identify popular cuisines
Understand cost patterns of restaurants
Explore relationship between cost, rating, and votes
Extract actionable business insights
📂 Dataset Information

The dataset contains restaurant-related information from Zomato, including:

Restaurant Name
City
Address
Cuisines
Rating (Aggregate rating)
Votes
Approximate Cost for Two
Online Order Availability
Table Booking Option
🧹 Data Cleaning Process

The dataset was cleaned and prepared using the following steps:

Removed duplicate records
Handled missing values in key columns (Rating, City, Cuisines)
Standardized column names
Converted rating values to numeric format
Corrected data types for analysis
Removed invalid or inconsistent entries
🛠️ Tools & Technologies Used
Python (Pandas, NumPy)
Matplotlib & Seaborn (Data Visualization)
SQL (PostgreSQL)
Jupyter Notebook
Excel (basic preprocessing, if used)
📊 Exploratory Data Analysis (EDA)
📍 City-wise Analysis
Metro cities like Bangalore, Delhi, and Mumbai have the highest number of restaurants
Smaller cities have fewer restaurant listings
⭐ Rating Analysis
Most restaurants fall in the rating range of 3.0 to 4.2
Very few restaurants achieve ratings above 4.5
Indicates moderate overall customer satisfaction
🍽️ Cuisine Analysis
North Indian, Chinese, and Fast Food are the most popular cuisines
Multi-cuisine restaurants dominate the market
💰 Cost Analysis
Majority of restaurants are in the ₹300–₹800 (for two people) range
Premium restaurants exist but are limited
🔗 Cost vs Rating Relationship
Weak correlation observed between cost and rating
Higher cost does not guarantee better ratings
Customer satisfaction depends on service and food quality
📈 Votes Analysis
Highly rated restaurants tend to receive more votes
Votes represent popularity but not always quality
📊 Key Insights
Metro cities dominate restaurant availability
Budget and mid-range restaurants are most common
North Indian and Chinese cuisines are most preferred
Ratings are mostly moderate (3.0–4.2 range)
Cost is not strongly linked to ratings
Online ordering improves restaurant visibility
📁 Project Structure
Zomato-Restaurant-Analysis/
│
├── data/               # Dataset (CSV file)
├── sql/                # SQL scripts for analysis
├── notebooks/         # Jupyter Notebook (EDA)
├── images/            # Visualizations (graphs/charts)
├── reports/           # Final project report (PDF)
└── README.md
📈 Sample Visualizations

This project includes:

City-wise restaurant distribution chart
Rating distribution histogram
Cuisine popularity bar chart
Cost vs Rating scatter plot
Votes analysis chart

(All visuals are stored in the /images folder)

🚀 How to Run This Project
1. Clone the repository
git clone https://github.com/your-username/zomato-analysis.git
2. Install dependencies
pip install pandas numpy matplotlib seaborn
3. Run Jupyter Notebook
jupyter notebook
📌 Business Conclusion

This analysis shows that restaurant trends are strongly influenced by location and cuisine preferences rather than pricing. Metro cities dominate the market, and customer satisfaction is driven more by food quality and service than cost.

These insights can help food delivery platforms and restaurant owners improve strategy and customer experience.

👩‍💻 Author

Shefali Mittal
