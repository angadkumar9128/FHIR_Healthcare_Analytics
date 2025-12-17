# FHIR Explode Patterns

## Common FHIR Arrays
- identifier[]
- coding[]
- name[]
- component[] (Observation)

---

## Explode Approach
- explode_outer used to prevent record loss
- Arrays flattened one level at a time
- Nested arrays handled incrementally

---

## Example
- Observation.code.coding[] → observation_code, observation_display
- Patient.name[] → first_name, last_name

---

## Benefit
Consistent explode patterns across resources
simplify Silver normalization.
