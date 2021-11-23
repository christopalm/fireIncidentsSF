# Fire Incidents of San Francisco
Creating a Data Warehouse for fire incidents of San Francisco

## Data Source
https://data.sfgov.org/Public-Safety/Fire-Incidents/wr8u-xric

## Requeriments to run the ETL and Reports

1. You need to install or access Jupyter Notebooks (you can use Anaconda to run Jupypter Notebooks locally in your computer. [Anaconda Site](https://www.anaconda.com/)
2. Python 3.9 (Anaconda already contains a Python version)
    - pyodbc library (conda install pyodbc)
    - pip (conda install pip)
4. Power BI Desktop

You can also run the Python scripts in Azure Synapse Analytics (PySpark), Databricks or locally in your computer. 

## Folder Structure and description

1. Python Scripts
    - Folder: scripts

2. Images of the reports
    - Folder: reportImages

## Schema selection
For this initial release the star schema was selected, but it's possible to create a snowflake schema specially with data like city, location and district, those can be normalized. 

## Star Schema
![starSchema](/images/starSchema.PNG)

## Some reports
![generalReport](/images/generalReport.PNG)
