# FHIR Flattening Strategy

FHIR resources are designed for interoperability, not analytics.
Therefore, flattening follows a selective approach.

## Strategy Principles
1. Flatten only required fields
2. Preserve `id` as primary key
3. Maintain foreign keys for joins
4. Avoid denormalization at Silver level

## Common Flattening Techniques
- explode() for arrays
- dot notation for nested structs
- from_json() for controlled parsing

## Outcome
Each Silver table represents a single FHIR resource
in a clean, relational format.
