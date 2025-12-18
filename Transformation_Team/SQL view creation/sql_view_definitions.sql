-- Patient Encounter Summary View
CREATE OR REPLACE VIEW analytics.vw_patient_encounter_summary AS
SELECT
  patient_id,
  age,
  gender,
  total_encounters,
  avg_stay_duration
FROM gold.patient_encounter_summary;

-- Admissions Analytics View
CREATE OR REPLACE VIEW analytics.vw_admissions_analytics AS
SELECT
  admission_month,
  COUNT(*) AS total_admissions,
  AVG(encounter_duration) AS avg_length_of_stay
FROM gold.admissions_analytics
GROUP BY admission_month;
