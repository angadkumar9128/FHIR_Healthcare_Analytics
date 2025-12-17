-- Deduplicate Patient records
CREATE OR REPLACE VIEW silver.patient_deduped AS
SELECT *
FROM (
  SELECT *,
         ROW_NUMBER() OVER (
           PARTITION BY patient_id
           ORDER BY last_updated DESC
         ) AS rn
  FROM silver.patient_raw
)
WHERE rn = 1;
