/* ANDREW WILL CREATE SOME QUERIES HERE BASED ON THE NOTES IN THE GEARSS DATA DICTIONARY 

1. COUNT OF ALL UNIQUE SOURCE AND STANDARD CONCEPT PAIRS ALL SOURCE FOR ED VISITS ONLY (INCLUDING STRINGS)

Column Titles
-- Table Name
-- Source Text String (may need to join to source-to-concept tables depending on implementation) 
-- Source Concept ID 
-- Standard Text String (need to join to vocabulary tables)
-- Standard Concept ID
-- Count of this source-standard pair in ED encounters

* We will review 200 ordered by frequency

SAVE AS CSV FILE eg. YU_source_standard_profiling.csv

2. COUNTS OF GEARS CONCEPTS IN CONDITION, MEASUREMENT, AND OBSERVATION TABLES FOR ED VISITS (JOIN ON CONCEPT CODES FROM ATHENA THAT ANALYSTS LOOKUP)

TODO - GEARS analysts must create a tab in GEARSS_DATA_DICTIONARY_wOMOP to obtain concept IDs - use Athena and/or local knowledge
for example -- https://athena.ohdsi.org/search-terms/terms?query=delerium

3. GENERATE DATA-ELEMENT SPECIFIC QUERIES USING "SPECIFICATIONS FOR QUERY" TAB IN gearss_data_dictionary_wOMOP.XLSX FILE

TODO - repeat #1 for only GEARS concepts only

Column Titles
-- Table Name
-- Source Text String (may need to join to source-to-concept tables depending on implementation) 
-- Source Concept ID 
-- Standard Text String (need to join to vocabulary tables)
-- Standard Concept ID
-- Value as string (categorical responses only for measurement and observation table)
-- Value as concept ID 
-- Count of this source-standard pair in ED encounters


*/
