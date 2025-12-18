# Healthcare Metric Catalog

## 1. Utilization Metrics

| Metric Name | Description | Source Table |
|------------|-------------|--------------|
| encounter_count_30d | Number of encounters in last 30 days | patient_encounter_summary |
| admission_count_90d | Total admissions in last 90 days | admissions_analytics |
| avg_los | Average length of stay | admissions_analytics |

---

## 2. Clinical Metrics

| Metric Name | Description | Source Table |
|------------|-------------|--------------|
| chronic_condition_count | Total chronic diagnoses | disease_breakdown |
| condition_diversity | Distinct conditions per patient | disease_breakdown |
| procedure_frequency | Number of procedures | treatment_trends |

---

## 3. Financial Metrics

| Metric Name | Description | Source Table |
|------------|-------------|--------------|
| total_claim_cost | Total insurance cost | claims_summary |
| avg_claim_cost | Average cost per claim | claims_summary |
| cost_per_encounter | Cost per encounter | claims_summary |

---

## 4. Outcome & Risk Indicators

| Metric Name | Description | Source Table |
|------------|-------------|--------------|
| readmission_flag | Readmission within 30 days | admissions_analytics |
| high_utilization_flag | Frequent care usage | patient_encounter_summary |
| high_cost_flag | Above-threshold claims | claims_summary |
