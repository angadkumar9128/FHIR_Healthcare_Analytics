# Silver Layer JSON Flattening Examples
# PySpark

from pyspark.sql.functions import col, explode

# -----------------------------
# Patient Flattening Example
# -----------------------------
patient_df = spark.table(
    "angad_kumar91.fhir_healthcare_analytics_bronze.patient"
)

silver_patient_df = patient_df.select(
    col("id").alias("patient_id"),
    col("gender"),
    col("birthDate"),
    col("name")[0]["family"].alias("last_name"),
    col("name")[0]["given"][0].alias("first_name")
)

silver_patient_df.write.mode("overwrite").saveAsTable(
    "angad_kumar91.fhir_healthcare_analytics_silver.patient"
)

# -----------------------------
# Observation Flattening Example
# -----------------------------
observation_df = spark.table(
    "angad_kumar91.fhir_healthcare_analytics_bronze.observation"
)

silver_observation_df = observation_df \
    .withColumn("coding", explode("code.coding")) \
    .select(
        col("id").alias("observation_id"),
        col("subject.reference").alias("patient_reference"),
        col("coding.code").alias("observation_code"),
        col("coding.display").alias("observation_name"),
        col("valueQuantity.value").alias("value"),
        col("valueQuantity.unit").alias("unit")
    )

silver_observation_df.write.mode("overwrite").saveAsTable(
    "angad_kumar91.fhir_healthcare_analytics_silver.observation"
)
