from pyspark.sql.functions import col, explode_outer

# Read Bronze JSON
bronze_df = spark.table(
    "fhir_healthcare_analytics_bronze.raw_fhir"
)

# Example: Flatten Observation resource
observation_df = (
    bronze_df
    .filter(col("resourceType") == "Observation")
    .select(
        col("id").alias("observation_id"),
        col("subject.reference").alias("patient_reference"),
        explode_outer("code.coding").alias("coding"),
        col("effectiveDateTime").alias("observation_time"),
        col("valueQuantity.value").alias("value"),
        col("valueQuantity.unit").alias("unit")
    )
    .select(
        "observation_id",
        "patient_reference",
        col("coding.code").alias("observation_code"),
        col("coding.display").alias("observation_name"),
        "value",
        "unit",
        "observation_time"
    )
)

observation_df.display()
