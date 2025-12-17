# Common FHIR Explode Patterns

FHIR resources commonly contain arrays and nested objects.

## Example Patterns

### CodeableConcept
Used in Condition, Observation, Procedure
- coding[] → explode
- coding.code
- coding.display

### Reference
Used for linking resources
- subject.reference
- encounter.reference

### Effective Date
- effectiveDateTime
- effectivePeriod.start / end

### Components (Observation)
- component[] → explode
- component.code
- component.valueQuantity

These patterns are consistently applied across Silver tables.
