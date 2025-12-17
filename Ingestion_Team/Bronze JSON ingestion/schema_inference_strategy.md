# Schema Inference Strategy

FHIR JSON files are semi-structured and may vary across versions.

## Strategy Used
- Spark JSON reader with automatic schema inference
- Handles nested arrays and structs
- Compatible with evolving FHIR standards

## Why Schema Inference
- Reduces manual schema maintenance
- Adapts to new fields automatically
- Ideal for early ingestion layers

Schema enforcement is deferred to the Silver layer.
