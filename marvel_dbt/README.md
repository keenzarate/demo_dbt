This project is a simple dbt practice.

Data was downloaded from Kaggle and is meant to be a simple dataset 

I've created various models here despite the simplicity of the data. This 
is meant to mimick how I would go about building a dbt folder structure for 
a any dataset. 

*base* are models built simply to rename columns from the raw dataset. This can be helpful to have especially when datasets are wide and naming conventions need to be applied (e.g. snake_case or camelCase)
*stage* are models built to apply general data cleaning such as creating a consistent value for a year column for instance (e.g. 1819 vs 2018-2019)

