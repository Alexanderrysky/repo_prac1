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

#revenue['gross_revenue'] = revenue['gross_revenue'].astype(float)
#print(revenue.dtypes)
#plt.pie(revenue["gross_revenue"], labels = revenue["city_name_en"])
#plt.show()

#plt.bar(x = revenue['sales_date'],height = revenue['gross_revenue'])
plt.bar(x=revenue['sales_date'],height=revenue['gross_revenue','gross_shipping_cost'])
plt.xlabel("dates")
plt.ylabel("gross revenue")
plt.show()
