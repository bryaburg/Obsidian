
2024-08-12 08:41

Status:

Tags:

[[SQL]]

# Interactive Intro to SQL w Sara Beauregard

- Tables is where the the databases data is stored in a DB
- SELECT * FROM Projects; Selects everything that is inside the Projects Table.
- SELECT * FROM Projects WHERE SoldPrice > 1000; Grabs Everything that is in the projects table that is less than 1000 in sold price.  Allowing more filtering options.
- SELECT ID, Descr, SoldPrice, Cost FROM Projects WHERE SoldPrice > 1000; Now only shows columns that are in the SELECT column.  
- SELECT is row columns and FROM is for tables.
- SQL Order of Operations, FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY
- Simple Aggregate Functions, AVG, COUNT, MAX, MIN, SUM
- SELECT MAX(SoldPrice) as MaxPrice
- SELECT * FROM Projects WHERE SoldPrice > 1000 ORDER BY SoldPrice DESC "Desending or -- ASC Accending"
-  You can declare multiple WHERE statements, SELECT * FROM Projects WHERE SoldPrice > 1000 AND StartDate > '2024-01-01' ORDER BY SoldPrice DESC
- [Joins](https://blog.codinghorror.com/a-visual-explanation-of-sql-joins/) Sample
- 
# Reference

- [Live Video](https://theescogroup.sharepoint.com/sites/ESCOAutomationTraining/_layouts/15/stream.aspx?id=%2Fsites%2FESCOAutomationTraining%2FShared+Documents%2FVideo+Lessons%2FInteractive+Intro+to+SQL+w_+Sara+Beauregard-20240807_100216-Meeting+Recording.mp4&referrerScenario=AddressBarCopied.view.6a29e36c-2cf4-4a69-a06a-e8794eb14fc2&ga=1)
