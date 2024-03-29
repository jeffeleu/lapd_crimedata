# Data Warehousing of LAPD Crime Data from 2020 to Present

# Data Explanation
The data comes from an inital reporting of a crime to law enforcement (either from emergency phone calls (911), visits to the police station, or online reporting, etc). Law enforcement officers or operators collect information about the reported crime such as the type of crime, location, time and date of occurrence, descriptions of suspects or victims. The information is then classified and documented (according to the data source, the original crime reports were typed on paper). The provided dataset is a transcribed version of the original paper documentation.

# Methodology
**Sourcing**: 
To start, I went to catalog.data.gov and chose a data set that piqued my interest. I chose 'Crime Data from 2020 to Present' from the LAPD. To get familiar with the data, I found where the data comes from and located the data dictionary(created excel file to store it) to understand the purpose/meaning of the respective data elements. I then wrote a script that utilizes pandas and numpy to gather the data. The script reads the data, creates a data frame, and shows the column and shape. 

**Storage**:
To store the data, I utilized Microsoft Azure. On Microsoft Azure, I created a resource group and a container within it to house data. To upload my sourced data to Azure, I updated my script to use the classes, BlobServiceClient, BlobClient, and ContainerClient from azure.storage.blob and StringIO from IO. StringIO assists me in converting my dataframe to a csv file. The classes from the Azure library allows me to establish a connection, access the appropriate container and blob, and upload the data efficiently.

**Modeling**:
To start the modeling of the data warehouse, 

# Sources
[Data Source of LAPD Crime Data](https://catalog.data.gov/dataset/crime-data-from-2020-to-present)

[Source of Data Dictionary](https://data.lacity.org/Public-Safety/Crime-Data-from-2020-to-Present/2nrs-mtv8/about_data)
