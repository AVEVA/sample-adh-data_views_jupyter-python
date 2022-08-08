# ADH Data View Data Analysis Sample using Jupyter

| :loudspeaker: **Notice**: Samples have been updated to reflect that they work on AVEVA Data Hub. The samples also work on OSIsoft Cloud Services unless otherwise noted. |
| -----------------------------------------------------------------------------------------------|  

**Version:** 1.1.5

[![Build Status](https://dev.azure.com/osieng/engineering/_apis/build/status/product-readiness/ADH/aveva.sample-adh-data_views_jupyter-python?branchName=main)](https://dev.azure.com/osieng/engineering/_build/latest?definitionId=3095&branchName=main)

The sample code in this folder demonstrates how to utilize the ADH Data Views to do some basic data analysis using Python Jupyter Notebook. In order to run this sample, you need to have [Python](https://www.python.org/downloads/) installed.

Developed against Python 3.9.1.

## About the Sample

This sample is intended to show you how you can use an ADH Data View to bring your data from ADH into Jupyter and easily into Pandas to do machine learning. Using an ADH Data View allows you to configure the data you want, in the way you want it, and not have to do as much client side processing of the data. This is a basic sample that shows you a possible way to do machine learning and a possible outcome of looking at the data. This is not a guide to Pandas or machine learning.

## Background and Problem

### Background

Wind turbines operate by capturing kinetic enrgy of wind to turn rotor blades that run a generator. Governed by Betz's law they can only capture 59.3% of kinetic enrgy from wind. This is important, because after a certain limit higher winds do not create additional power. At a certain wind speed, the power actually decreases.

### Problem Statement

Can we predict the power output of our wind turbines based on weather forecast data?

## Getting Started

- Clone the GitHub repository
- Install the required modules by running the following command in the terminal : `pip install -r requirements.txt`
- If running the tests, install the required modules by running the following command in the terminal : `pip install -r test-requirements.txt`

### Data Overview

The data we are using is available in our sample-ocs-bulk_upload-dotnet repository SampleCollections [folder](https://github.com/osisoft/sample-ocs-bulk_upload-dotnet/tree/main/SampleCollections/DataViewWind). The steps to upload this data are included in that folder. This sample also skips over the exercise of creating the data view, this is included in the data that you can upload. To see how to create a Data View programmatically, please look at our other samples [here](https://github.com/osisoft/OSI-Samples-OCS/blob/main/docs/DATA_VIEWS_README.md).

This sample data is similar to what you might have from a site where the data has unexpected values and not every turbine behaves exactly the same. The data is only for 1 day. Repeating this exercise but using more days of data would give you a better prediction.

### Setting up the ADH connection

- In the `Jupyter` folder, populate the values of `appsettings.placeholder.json` with your own system configuration. Before editing, rename this file to `appsettings.json`. This repository's `.gitignore` rules should prevent the file from ever being checked in to any fork or branch, to ensure credentials are not compromised.

For example:

```json
{
  "Resource": "https://uswe.datahub.connect.aveva.com",
  "ApiVersion": "v1",
  "TenantId": "PLACEHOLDER_REPLACE_WITH_TENANT_ID",
  "NamespaceId": "PLACEHOLDER_REPLACE_WITH_NAMESPACE_ID",
  "CommunityId": null,
  "ClientId": "PLACEHOLDER_REPLACE_WITH_APPLICATION_IDENTIFIER",
  "ClientSecret": "PLACEHOLDER_REPLACE_WITH_APPLICATION_SECRET"
}
```

### Running Jupyter Notebook

Open a terminal and type in `jupyter notebook`. This will open a browser window. Navigate to the cloned repository and open up `Wind_Turbine_ADH_Data_ADH_Python_Library.ipynb`. Run the cells one by one and you can see the output in browser itself.

### Test Jupyter Notebook

The last cell in the notebook is for running unit tests so that you can test to make sure the whole notebook is working as expected. As it tests the methods defined earlier in the notebook, you need to run the previous cells of the notebook before trying to run the unit tests.

### Automated Tests

The automated tests assume that the data is already lodaded. The steps to load the data and delete the data are included in the .yml but are commented out to not send and delete large amounts of the same data often.

---

For the main ADH samples page [ReadMe](https://github.com/osisoft/OSI-Samples-OCS)  
For the main AVEVA samples page [ReadMe](https://github.com/osisoft/OSI-Samples)
