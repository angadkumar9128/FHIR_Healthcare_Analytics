-- Flatten Encounter subject reference
SELECT
  id AS encounter_id,
  subject.reference AS patient_reference,
  period.start AS start_date,
  period.end AS end_date,
  type[0].coding[0].code AS encounter_code
FROM fhir_healthcare_analytics_bronze.raw_fhir
WHERE resourceType = 'Encounter';
