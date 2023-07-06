import sys
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np

#df = pd.read_csv("revenue_full_full.csv")
#print(df.to_string())
#print(pd.options.display.max_rows)
#pd.options.display.max_rows = 90
#print(df.to_string())
#print(pd.options.display.max_rows)
#print(df.head(4))
#print(df.tail(3))

revenue_full = pd.read_csv("revenue_july_full.csv")
#print(revenue_full.head())
#revenue_full.plot.scatter(x = 'sales_date', y = 'gross_revenue')
#plt.show()

#LINE GRAPH PLOTING

#REVENUE line graph
#revenue = pd.read_csv("july_revenue_cost_citie_date_no_repeat.csv")
#revenue = revenue.head(len(revenue))
#print(revenue)
#revenue = revenue.pivot(index='sales_date',columns='city_name_en', values='gross_revenue')
#print(revenue)
#revenue.plot(figsize=(5,8),kind='line',rot=30)
#plt.ylabel("Gross revenue")
#plt.xlabel("Sales date")
#plt.show()
#sys.exit()


#PLOTTIG PIE GRAPH

#REVENUE pie graph:
#revenue_no_date = pd.read_csv("july_revenue_no_dates.csv")
#revenue_no_date['gross_revenue'] = revenue_no_date['gross_revenue'].astype(float)
#explodelist_revenue = []
#for x in range(0,len(revenue_no_date["gross_revenue"])):
#    explodelist_revenue.append(0.1)
#plt.pie(revenue_no_date["gross_revenue"], labels=revenue_no_date["city_name_en"],rotatelabels=30,
#        textprops={'fontsize':5.5}, autopct='%1.1f%%',explode=explodelist_revenue)
#plt.title("GROSS REVENUE SHARE")
#plt.show()

#SHIPPING COST pie graph
shipping_cost_no_date = pd.read_csv("july_only_shipping_cost_no_dates.csv")
explodelist_cost = []
for x in range(0,len(shipping_cost_no_date["gross_revenue"])):
    explodelist_cost.append(0.1)
plt.pie(shipping_cost_no_date["gross_shipping_cost"], labels=shipping_cost_no_date["city_name_en"],rotatelabels=30,
         autopct='%1.1f%%',explode=explodelist_cost)
plt.title("GROSS SHIPPING COST SHARE")
plt.show()



#BAR CHART EXPERIMENTATION
#plt.bar(x = revenue_full['sales_date'],height = revenue['gross_revenue'],color = 'orange')
#plt.xlabel("dates")
#plt.ylabel("gross revenue")
#plt.show()

#fig, ax = plt.subplots()
#revenue_full.plot.bar(x='sales_date', ax=ax)
#plt.xlabel("dates")
#plt.ylabel("gross revenue")
#plt.show()


#CITIES bar chart
#barchat_city = pd.read_csv("july_revenue_no_dates.csv")
#barchat_city = barchat_city.head(len(barchat_city))
#df = pd.DataFrame(barchat_city, columns=["city_name_en","gross_revenue","gross_shipping_cost"])
#df = df.sort_values('city_name_en')
#df.plot(x="city_name_en", y=["gross_revenue", "gross_shipping_cost"], kind="bar", rot=30, figsize=(9, 8),
#        fontsize = 5.5)
#plt.xlabel("Cities")
#plt.ylabel("gross revenue/shipping cost")
#plt.show()

#DATES bar chart
#barchart_date = pd.read_csv("july_revenue_cost_no_cities.csv")
#barchart_date = barchart_date.head(len(barchart_date))
#df = pd.DataFrame(barchart_date, columns= ['order_date_nk',"gross_revenue","gross_shipping_cost"])
#df.sort_values("order_date_nk")
#df.plot(x="order_date_nk", y=["gross_revenue", "gross_shipping_cost"], kind="bar", rot=30, figsize=(9, 8))
#plt.xlabel("Sales date")
#plt.ylabel("Gross revenue/Shipping cost")
#plt.show()

#revenue with dates and citys
#revenue = pd.read_csv("july_revenue_cost_citie_date_no_repeat.csv")
#revenue = revenue.head(len(revenue))
#print(revenue)
#revenue = revenue.pivot(index='sales_date',columns='city_name_en', values='gross_revenue')
#print(revenue)
#revenue.plot(figsize=(5,8),kind='bar',rot=30)
#plt.ylabel("Gross revenue")
#plt.xlabel("Sales date")
#plt.show()
#sys.exit()

