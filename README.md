# 🍽️ Zomato Restaurant Data Analysis

## 📌 Project Overview
This project analyzes Zomato restaurant data to uncover insights about restaurant distribution, customer preferences, pricing patterns, and ratings across different cities.

The analysis is performed using **Python (Pandas, Matplotlib, Seaborn)** and **SQL (PostgreSQL)** to demonstrate real-world data analysis skills.

---

## 🎯 Objectives
- Understand restaurant distribution across cities  
- Analyze customer rating patterns  
- Identify popular cuisines  
- Study cost trends of restaurants  
- Explore relationship between rating, cost, and votes  
- Generate business insights from data  

---

## 📂 Dataset Information
The dataset includes information about restaurants listed on Zomato.

### 📊 Features:
- Restaurant Name  
- City  
- Address  
- Cuisines  
- Aggregate Rating  
- Votes  
- Approximate Cost for Two  
- Online Order Availability  
- Table Booking Option  

---

## 🧹 Data Cleaning & Preparation
The dataset was cleaned using the following steps:

- Removed duplicate records  
- Handled missing/null values in key columns  
- Standardized column names  
- Converted rating to numeric format  
- Fixed incorrect data types  
- Ensured data consistency for analysis  

---

## 🛠️ Tools & Technologies Used
- Python  
  - Pandas  
  - NumPy  
  - Matplotlib  
  - Seaborn  
- SQL (PostgreSQL)  
- Jupyter Notebook  
- Excel (optional preprocessing)  

---

## 📊 Exploratory Data Analysis (EDA)

### 🏙️ City-wise Analysis
Metro cities like Bangalore, Delhi, and Mumbai have the highest number of restaurants. Smaller cities have significantly fewer listings.

---

### ⭐ Rating Analysis
Most restaurants fall between **3.0 to 4.2 rating**, indicating moderate customer satisfaction. Very few restaurants achieve ratings above 4.5.

---

### 🍽️ Cuisine Analysis
North Indian, Chinese, and Fast Food are the most popular cuisines. Multi-cuisine restaurants dominate urban areas.

---

### 💰 Cost Analysis
Most restaurants fall in the **₹300 – ₹800 range for two people**, while premium restaurants are limited.

---

### 🔗 Cost vs Rating Analysis
There is a weak correlation between cost and rating. Higher prices do not guarantee better ratings; service and food quality matter more.

---

### 📈 Votes Analysis
Highly rated restaurants generally receive more votes, indicating popularity but not always quality.

---

## 📊 Key Insights
- Metro cities dominate restaurant listings  
- North Indian and Chinese cuisines are most preferred  
- Budget restaurants are most common  
- Ratings are mostly moderate (3.0–4.2)  
- Cost and rating have weak correlation  
- Online ordering improves restaurant visibility  

---

## 📈 Sample Visualizations
This project includes:

- City-wise restaurant distribution  
- Rating distribution histogram  
- Cuisine popularity bar chart  
- Cost vs Rating scatter plot  
- Votes analysis chart  

All visualizations are available in the `/images` folder.

---

## 🚀 How to Run This Project

### 1. Clone the repository
```bash
git clone https://github.com/your-username/zomato-analysis.git
2. Install dependencies
pip install pandas numpy matplotlib seaborn
3. Run Jupyter Notebook
jupyter notebook
📌 Business Conclusion

This analysis shows that restaurant success is influenced more by location and food quality than pricing. Metro cities dominate the market, and customer satisfaction depends on service and taste rather than cost.

These insights can help food delivery platforms and restaurant owners improve business strategies.

👩‍💻 Author

Shefali Mittal
