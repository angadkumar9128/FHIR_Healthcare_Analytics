# Risk Driver Explainability

## Purpose
Explain *why* a patient is classified into a risk category.

---

## Example Risk Drivers

- High utilization_score → frequent encounters
- High chronic_burden_score → multiple chronic conditions
- High cost_intensity_score → elevated claims
- Readmission_score present → recent instability

---

## Output Format

Each patient record includes:
- Top contributing features
- Score contribution percentages
- Human-readable explanation
