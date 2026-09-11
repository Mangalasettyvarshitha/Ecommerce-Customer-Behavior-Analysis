import pandas as pd
import matplotlib.pyplot as plt
#load data
df = pd.read_csv(r"C:\Users\CHAITANYA\OneDrive\Documents\Desktop\Ecommerce_Customer_Behavior_Analysis\data\ecommerce.csv.csv")
print(df)

print(df.head())
print(df.shape)
print(df.columns)
print(df.info())
#checking missing values
print(df.isnull().sum())
#check revengue
df["revenue"] = df["quantity"] * df["unit_price"]
print(df[["order_id", "quantity", "unit_price", "revenue"]])
#create date
completed = df[df["order_status"] == "Completed"]
df["order_date"] = pd.to_datetime(df["order_date"])
#separate completed orders
completed = df[df["order_status"] == "Completed"]
print(completed)
#total completed orders
total_orders = completed["order_id"].count()
print("Total Completed Orders:", total_orders)
#total revengue
total_revenue = completed["revenue"].sum()
print("Total Revenue:", total_revenue)
#top selling products
product_sales = completed.groupby("product_name")["quantity"].sum()
product_sales = product_sales.sort_values(ascending=False)
print(product_sales)
# product category
category_revenue = completed.groupby("product_category")["revenue"].sum()
category_revenue = category_revenue.sort_values(ascending=False)
print(category_revenue)
#highest spending customers
customer_spending = completed.groupby("customer_name")["revenue"].sum()
customer_spending = customer_spending.sort_values(ascending=False)
print(customer_spending)

#monthly revenue
monthly_revenue = completed.groupby(
completed["order_date"].dt.month)["revenue"].sum()
print(monthly_revenue)
#sort months
monthly_revenue = completed.groupby(
    completed["order_date"].dt.strftime("%B"))["revenue"].sum()
print(monthly_revenue)
#payment methods
payment_counts = completed["payment_method"].value_counts()
print(payment_counts)
#avg customer rating
average_rating = completed["rating"].mean()
print("Average Rating:", average_rating)
#city wise revengue
city_revenue = completed.groupby("city")["revenue"].sum()
city_revenue = city_revenue.sort_values(ascending=False)
print(city_revenue)
#gender wise revengue
gender_revenue = completed.groupby("gender")["revenue"].sum()
gender_revenue = gender_revenue.sort_values(ascending=False)
print(gender_revenue)
#cancelled orders
cancelled = df[df["order_status"] == "Cancelled"]
print("Cancelled Orders:", cancelled["order_id"].count())
#customer multiple puraches
customer_orders = completed["customer_name"].value_counts()
print(customer_orders[customer_orders > 1])
#avg order value
average_order_value = completed["revenue"].mean()
print("Average Order Value:", average_order_value)




