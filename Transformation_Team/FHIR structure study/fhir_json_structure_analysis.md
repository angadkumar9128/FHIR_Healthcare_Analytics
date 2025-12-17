# FHIR JSON Structure Analysis

## Common Structural Patterns
FHIR resources contain deeply nested fields such as:

- identifier[] (arrays)
- coding[] inside code objects
- subject.reference fields
- component[] in Observation

---

## Example Nested Paths
- Patient.name[].given[]
- Observation.code.coding[].code
- Encounter.subject.reference
- Condition.code.coding[].display

---

## Transformation Challenge
- Arrays must be exploded safely
- Nested objects must be aliased clearly
- Null-safe handling is required

---

## Outcome
All nested JSON patterns are identified and prepared
for flattening in the Transformation layer.
