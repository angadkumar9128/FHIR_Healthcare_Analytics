-- Null and range validation
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.metric_table
WHERE encounter_count_30d < 0
   OR total_claim_cost < 0
   OR encounter_count_30d IS NULL
   OR total_claim_cost IS NULL;


-- Score boundary validation
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.feature_scores
WHERE utilization_score NOT BETWEEN 0 AND 100
   OR chronic_burden_score NOT BETWEEN 0 AND 100
   OR cost_intensity_score NOT BETWEEN 0 AND 100
   OR readmission_score NOT BETWEEN 0 AND 100;

-- Flag unrealistic LOS
SELECT *
FROM angad_kumar91.fhir_healthcare_analytics_gold.admissions_analytics
WHERE avg_los > 365;

