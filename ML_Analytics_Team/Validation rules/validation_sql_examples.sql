-- Null and range validation
SELECT *
FROM metric_table
WHERE encounter_count_30d < 0
   OR total_claim_cost < 0;

-- Score boundary validation
SELECT *
FROM feature_scores
WHERE utilization_score NOT BETWEEN 0 AND 100;

-- Flag unrealistic LOS
SELECT *
FROM admissions_analytics
WHERE avg_los > 365;
