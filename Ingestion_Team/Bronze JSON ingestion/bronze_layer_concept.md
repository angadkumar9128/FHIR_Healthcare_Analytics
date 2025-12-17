# Bronze Layer Concept

The Bronze layer represents the raw ingestion zone in the Lakehouse
architecture.

## Key Characteristics
- Stores data as close as possible to the source
- No flattening or normalization
- No joins across resources
- Minimal column selection

## Why Minimal Transformation
- Healthcare data must remain auditable
- FHIR schemas may evolve over time
- Raw storage allows replay and correction
- Prevents early data loss

## Example
FHIR resources such as Patient, Encounter, and Observation are ingested
as-is without modifying nested structures.

This ensures full fidelity of the source data.
