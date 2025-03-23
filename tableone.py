import pandas as pd
from tableone import TableOne

# Read data from CSV file.
# Replace {path_to_file} with the actual path to your CSV file.
# For example: data = pd.read_csv("path/to/your/file.csv")
path_to_file = "path/to/your/file"

data = pd.read_csv(f"{path_to_file}.csv")

# Specify the columns to include in the summary table.
columns = [
    "age_at_encounter",
    "gender_concept_name",
    "gender_source_value",
    "race_concept_name",
    "race_source_value",
    "ethnicity",
    "ethnicity_source_value",
    "visit_concept_name"
]

# Define which columns are categorical.
categorical = [
    "gender_concept_name",
    "gender_source_value",
    "race_concept_name",
    "race_source_value",
    "ethnicity_source_value",
    "ethnicity",
    "visit_concept_name",
]

# Specify non-normal continuous variables.
nonnormal = ["age_at_encounter"]

# Stratify the table by care_site_name.
groupby = "care_site_name"

# Create the TableOne object.
table1 = TableOne(
    data=data,
    columns=columns,
    categorical=categorical,
    groupby=groupby,
    nonnormal=nonnormal
)

# Generate the HTML table using the tableone package.
html_table = table1.tabulate(tablefmt="html")

# Write the HTML table to an output file.
output_file = "tableone_stratified_by_care_site.html"
with open(output_file, "w") as f:
    f.write(html_table)

print(f"HTML file generated successfully: {output_file}")