# Schema and Catalog Mapping – Transformation

## Catalog Structure
All transformation work follows a layered schema approach:

- fhir_healthcare_analytics_bronze
- fhir_healthcare_analytics_silver
- fhir_healthcare_analytics_gold

---

## Transformation Ownership
- Reads from: Bronze schema
- Writes to: Silver schema
- Validates for: Gold schema consumption

---

## Benefits
- Clear separation of concerns
- Safe experimentation
- Analytics-ready downstream consumption
