# Data Sourcing, Storing, and Modeling of LAPD Crime Data from 2020 to Present

## Data Explanation
The data comes from an inital reporting of a crime to law enforcement (either from emergency phone calls (911), visits to the police station, or online reporting, etc) in the city of Los Angeles. Law enforcement officers or operators collect information about the reported crime such as the type of crime, location, time and date of occurrence, descriptions of suspects or victims. The information is then classified and documented (according to the data source, the original crime reports were typed on paper). The provided dataset is a transcribed version of the original paper documentation.

## Sourcing 

To source the data, I went to catalog.data.gov and chose a data set that piqued my interest. I chose 'Crime Data from 2020 to Present' from the LAPD. To get familiar with the data, I found where the data comes from and located the data dictionary (created excel file to store it) to understand the purpose/meaning of the respective data elements. I then wrote a script that utilizes pandas and numpy to gather the data. The script reads the data, creates a data frame, and shows the column and shape. 

## Storing

To store the data, I utilized Microsoft Azure Storage. On Microsoft Azure Storage, I created a resource group and a container within it to house data. To upload my sourced data to Azure, I updated my sourcing script to use the classes, BlobServiceClient, BlobClient, and ContainerClient from azure.storage.blob. The classes from the Azure library allows me to establish a connection, access the appropriate container and blob, and upload the data efficiently.

## Modeling

To model the data, I identified the facts and dimensions. The fact table consists of foreign keys that reference the dimension tables. The dimensions identified for the data warehouse are as follows: Crime, Premise, Weapon, Victim, DateTime, Location, and Status. Afterwards, I employed DBSchema to visualize and construct the database system. Following this, I saved the SQL script generated by my model for future data warehousing. 

## Sources
[LAPD Crime Data](https://catalog.data.gov/dataset/crime-data-from-2020-to-present)

[Data Dictionary](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)
