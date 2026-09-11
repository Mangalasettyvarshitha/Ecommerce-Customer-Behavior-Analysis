import pandas as pd
import matplotlib.pyplot as plt

import pandas as pd
import matplotlib.pyplot as plt

# Load CSV
df = pd.read_csv(r"C:\Users\CHAITANYA\OneDrive\Documents\Desktop\Ecommerce_Customer_Behavior_Analysis\data\ecommerce.csv.csv")

# Create revenue
df["revenue"] = df["quantity"] * df["unit_price"]

# Convert date
df["order_date"] = pd.to_datetime(df["order_date"])

# Completed orders
completed = df[df["order_status"] == "Completed"]




#category revengue  bar chart
category_revenue = completed.groupby("product_category")["revenue"].sum()
category_revenue = category_revenue.sort_values(ascending=False)

category_revenue.plot(kind="bar")

plt.title("Revenue by Product Category")
plt.xlabel("Product Category")
plt.ylabel("Revenue")
plt.xticks(rotation=0)

plt.show()




#monthly fevengue line chart
import matplotlib.pyplot as plt

monthly_revenue = completed.groupby(
    completed["order_date"].dt.month
)["revenue"].sum()

monthly_revenue.plot(kind="line", marker="o")

plt.title("Monthly Revenue")
plt.xlabel("Month")
plt.ylabel("Revenue")
plt.xticks(
    range(1, 7),
    ["Jan", "Feb", "Mar", "Apr", "May", "Jun"]
)

plt.show()



#top10 selling products bar chart
import matplotlib.pyplot as plt

top_products = completed.groupby("product_name")["quantity"].sum()
top_products = top_products.sort_values(ascending=False).head(10)

top_products.plot(kind="bar")

plt.title("Top 10 Best-Selling Products")
plt.xlabel("Product")
plt.ylabel("Quantity Sold")
plt.xticks(rotation=45)

plt.show()



#tpo 10 customers spending bar chart
import matplotlib.pyplot as plt

customer_spending = completed.groupby("customer_name")["revenue"].sum()

customer_spending = customer_spending.sort_values(ascending=False).head(10)

customer_spending.plot(kind="bar")

plt.title("Top 10 Customers by Spending")
plt.xlabel("Customer")
plt.ylabel("Revenue")
plt.xticks(rotation=45)

plt.show()


#payment method pie chart
import matplotlib.pyplot as plt

payment_counts = completed["payment_method"].value_counts()

payment_counts.plot(kind="pie", autopct="%1.1f%%")

plt.title("Payment Method Distribution")
plt.ylabel("")

plt.show()
