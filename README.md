# Capstone Project - job change

SQL and Excel project

![HRdash](https://user-images.githubusercontent.com/10804109/197328393-02f4895c-afda-428c-94ec-5b6eaf4f8ae4.gif)
<br>
<br>
### Overview<br>
This repository contains the capstone project for my SG United Skills Associate Data Analyst program. The objective of this project was to showcase the use of SQL to organize data from different tables and the use of Excel to create an interactive dashboard to tell a story from the dataset.

The dataset is from a company which is active in Big Data and Data Science that wants to hire data scientists among people who successfully pass data related courses conducted by the company. Many people signup for their training. The company wants to know which of the candidates will work for the company after training or will look for new employment as it helps them to reduce cost by tailoring the syllabus appropriately to the correct category of candidates. The data source is from __[Kaggle](https://www.kaggle.com)__.

As my fellow course mates and I were in similar circumstances – hoping to move into a data related field after our course, I was hoping to uncover from the dataset, favourable factors that may lead to a move after our training.
<br>
<br>
### Data Model<br>
Data from 5 tables were uploaded to __[SQL Server Management Studio](https://learn.microsoft.com/en-us/sql/ssms/download-sql-server-management-studio-ssms?view=sql-server-ver16)__.  The tables were Enrollee, Employment, Education, City Development Index and Job Change.  The Entity Relationship Diagram (ERD) below shows the attributes of the entities as well as their relationship to each other.


![image](https://user-images.githubusercontent.com/10804109/197328526-9bcc4cd4-0761-4d2c-aa85-c4995cf2f74d.png)

With the ERD as a guide, primary keys and foreign keys were assigned to bring forth the relationships as outlined (see the database diagram below).

![image](https://user-images.githubusercontent.com/10804109/197328549-5d2bd268-cbf7-490e-8bfc-87b5b5e98364.png)

Subsequently, data from all the tables were combined using inner joins and exported to Excel.
The resultant interactive Excel dashboard can be found __[HERE](https://tinyurl.com/excelHR)__.    Please explore its interactivity by clicking on the slicers.
<br>
<br>
The story told from the dashboard is that candidates of the Data Science course who moved to a new job tend to have the following attributes:- <br>
<br>
•	1 to 10 years of working experience <br>
•	Had last new job that was 1 year ago <br>
•	Enrolled in a full-time course <br>
•	A basic STEM degree holder <br>
