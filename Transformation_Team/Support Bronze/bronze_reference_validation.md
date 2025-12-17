# Bronze Reference Validation

## Reference Fields Checked
- subject.reference
- patient.reference
- encounter.reference
- coverage.reference

---

## Validation Logic
- Reference fields present in JSON
- Reference format consistent across records
- No premature resolution at Bronze layer

---

## Outcome
FHIR references preserved correctly
for downstream normalization.
