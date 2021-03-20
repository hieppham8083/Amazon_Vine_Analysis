# Amazon_Vine_Analysis
- The purpose of this analysis was to find out Vine and non-Vine members with a 5-star review. Refer to [Vine_Review_Analysis.ipynb](../main/Vine_Review_Analysis.ipynb) and [Amazon_Reviews_ETL.ipynb](../main/Amazon_Reviews_ETL.ipynb)

## Challenge
- Perform ETL on Amazon Product Reviews using PySpark. Create a RDS on AWS, and the tables using SQL in pgAdmin. Refer to the these tables:
  [review_id_table](../main//Resources/review_id_table.png), [products_table](../main//Resources/products_table.png), [customers_table](../main//Resources/customers_table.png),  [vine_table](../main//Resources/vine_table.png)
- Determine Bias of Vine Reviews and perform the analysis from [vine_table.csv](../main//Resources/vine_table.csv.zip)
  - The total Vine members are 463, and non-Vine members are 25,094.
  - Vine members with 5 stars are 202, and non-Vine members with 5 stars are 12,033.
  - The percentage of 5-star Vine members are 43.62%, and non-Vine members are 44% and 47.95%.

## Results
- The following results of my analysis to confirm that there does not appear to be any sort of positivity bias. 
![alt text](../main/Resources/Results.png) 
