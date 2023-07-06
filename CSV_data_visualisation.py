import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

#df = pd.read_csv("revenue_july.csv")
#print(df.to_string())
#print(pd.options.display.max_rows)
#pd.options.display.max_rows = 90
#print(df.to_string())
#print(pd.options.display.max_rows)
#print(df.head(4))
#print(df.tail(3))

revenue = pd.read_csv("revenue_july.csv")
#print(revenue.head())
#revenue.plot.scatter(x = 'sales_date', y = 'gross_revenue')
#plt.show()

#PLOTTIG PIE GRAPH
revenue_no_date = pd.read_csv("july_revenue_no_dates.csv")
revenue_no_date['gross_revenue'] = revenue_no_date['gross_revenue'].astype(float)
#print(revenue.dtypes)
plt.pie(revenue_no_date["gross_revenue"], labels=revenue_no_date["city_name_en"],rotatelabels=30)
plt.show()

#BAR CHART EXPERIMENTATION
#plt.bar(x = revenue['sales_date'],height = revenue['gross_revenue'],color = 'orange')
#plt.xlabel("dates")
#plt.ylabel("gross revenue")
#plt.show()

#fig, ax = plt.subplots()
#revenue.plot.bar(x='sales_date', ax=ax)
#plt.xlabel("dates")
#plt.ylabel("gross revenue")
#plt.show()

#BEST BAR CHART
#revenue = revenue.head(len(revenue))
#df = pd.DataFrame(revenue, columns=["sales_date","gross_revenue","gross_shipping_cost"])
#df = df.sort_values('sales_date')
#df.plot(x="sales_date", y=["gross_revenue", "gross_shipping_cost"], kind="bar", rot=30, figsize=(9, 8))
#plt.xlabel("dates")
#plt.ylabel("gross revenue/shipping cost")
#plt.show()
