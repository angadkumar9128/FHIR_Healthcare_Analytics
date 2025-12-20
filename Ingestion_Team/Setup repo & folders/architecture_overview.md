# Architecture Overview

The project follows Databricks Lakehouse architecture for processing
FHIR healthcare data.

Source:
- Open-source FHIR JSON datasets (HL7 / Synthea style)

Processing:
- Apache Spark (PySpark & SQL)
- Delta Lake tables
- Bronze → Silver → Gold flow

Consumption:
- Databricks SQL
- BI tools (Power BI / Tableau – future scope)
