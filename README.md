[![Ask DeepWiki](https://deepwiki.com/badge.svg)](https://deepwiki.com/angadkumar9128/FHIR_Healthcare_Analytics)

---

# 🏥 NextGen Healthcare Analytics using Delta Lake

> **End-to-End Healthcare FHIR Data Engineering & Analytics using Databricks Lakehouse**

---

## 📌 1. Project Overview

**NextGen Healthcare Analytics using Delta Lake** is an enterprise-grade **Proof of Concept (POC)** that demonstrates how complex **FHIR (Fast Healthcare Interoperability Resources)** JSON data can be ingested, governed, transformed, and analyzed using the **Databricks Lakehouse architecture**.

**FHIR Healthcare Analytics** is an enterprise-grade **end-to-end healthcare data engineering platform** built using the **Databricks Lakehouse architecture**.
The project demonstrates how **complex, semi-structured FHIR JSON healthcare data** can be ingested, governed, transformed, and analyzed efficiently using **modern data engineering best practices**.

The system transforms **raw FHIR JSON bundles** into **analytics-ready datasets** through a **Medallion Architecture (Bronze → Silver → Gold)** and enables interactive dashboards, reporting, and downstream analytics use cases.

The project follows **modern data engineering best practices**, including:
- Medallion Architecture (Bronze, Silver, Gold)
- Delta Lake ACID guarantees
- Schema evolution handling
- Unity Catalog governance
- Interactive analytics dashboards

This repository serves as a **complete reference implementation** for healthcare data engineering using FHIR.

---

## 🎯 2. Business Problem Statement

Healthcare data presents multiple challenges:

* Highly **nested and semi-structured** JSON format
* Strong **relationships between entities** (patients, encounters, diagnoses, treatments)
* Continuous **schema evolution** in FHIR standards
* Strict **governance and compliance requirements**
* Raw FHIR data is **not analytics-ready**

### Key Challenges Solved

* Raw FHIR JSON cannot be directly queried for insights
* Schema drift causes pipeline failures
* Complex joins across clinical events
* Performance issues with large healthcare datasets

### 🧠 Solution

This project solves these problems by:

* Implementing **Delta Lake ACID storage**
* Using **Medallion Architecture**
* Normalizing FHIR resources
* Creating analytics-ready Gold tables
* Enforcing governance with Unity Catalog

---

## 🗂️ 3. Dataset Description

* **Source**: Synthetic healthcare data generated using **Synthea**
* **Patients**: 117 synthetic patients
* **Format**: FHIR Bundles (JSON)
* Each bundle contains multiple resource types

### FHIR Resources Used

* Patient
* Encounter
* Condition
* Observation
* Procedure
* MedicationRequest
* Immunization
* DiagnosticReport
* ExplanationOfBenefit

Each resource represents a **real-world healthcare event**.

---

## 🏗️ 4. High-Level Architecture

### Databricks Lakehouse Architecture

The solution is built on **Databricks Lakehouse**, combining:

* Data Lake scalability
* Data Warehouse reliability
* Governance and performance

### 🧱 Architecture Layers

| Layer  | Purpose                  | Characteristics        |
| ------ | ------------------------ | ---------------------- |
| Bronze | Raw ingestion            | Immutable, append-only |
| Silver | Normalized clinical data | Clean, relational      |
| Gold   | Business analytics       | Aggregated, optimized  |

## 🏗️ End-to-End Architecture Diagram

![ChatGPT Image Dec 31, 2025, 06_59_20 PM](https://github.com/user-attachments/assets/2802989d-a734-4610-b314-50c3c1f791b2)

---

## 🔄 End-to-End Project Working Flow

This project follows a **modern Databricks Lakehouse architecture** to transform raw FHIR healthcare data into **governed, analytics-ready insights**.

The implementation is divided into **clear, sequential steps**, each using specific platforms and technologies.

---

## 🪜 Step-by-Step Project Execution Flow

---

### 🔹 Step 1: Data Source – FHIR JSON Generation

**What happens**
- Synthetic healthcare data is generated using **Synthea**
- Data follows **FHIR standards**
- One JSON file per patient
- Each file contains a **FHIR Bundle** with multiple resource types

**FHIR Resources Included**
- Patient  
- Encounter  
- Condition  
- Observation  
- Procedure  
- MedicationRequest  
- Immunization  
- DiagnosticReport  
- Claim / ExplanationOfBenefit  

**Technology Used**
- Synthea
- FHIR JSON

---

### 🔹 Step 2: Raw Data Storage (Landing Zone)

**What happens**
- Raw FHIR JSON files are uploaded to Databricks
- Stored in **Unity Catalog Volumes**
- No transformation is applied

**Why this matters**
- Preserves raw data for audit and reprocessing
- Acts as the **source of truth**

**Platform / Technology**
- Databricks Lakehouse
- Unity Catalog Volume
- Cloud Object Storage (managed by Databricks)

---

### 🔹 Step 3: Bronze Layer – Raw Ingestion

**What happens**
- Raw FHIR JSON Bundles are ingested into **Delta tables**
- One record per patient file
- Ingestion metadata captured (file name, load time)
- Schema drift allowed

**Bronze Layer Characteristics**
- Immutable
- Auditable
- Schema-evolving

**Technology Used**
- Apache Spark
- PySpark
- Delta Lake (Bronze)
- Unity Catalog

---

### 🔹 Step 4: Silver Layer – FHIR Normalization

**What happens**
- FHIR Bundles are **exploded**
- Nested JSON structures are flattened
- One Silver table per FHIR resource
- References between resources are resolved

**Silver Tables Created**
- silver_patient  
- silver_encounter  
- silver_condition  
- silver_observation  
- silver_procedure  
- silver_medication_request  
- silver_immunization  
- silver_diagnostic_report  
- silver_explanation_of_benefit  

**Data Quality Applied**
- Datatype normalization
- Mandatory field checks
- Reference integrity (Patient ↔ Encounter)

**Technology Used**
- PySpark
- Spark SQL
- Delta Lake (Silver)
- Unity Catalog

---

### 🔹 Step 5: Gold Layer – Analytics & Business Views

**What happens**
- Silver tables are aggregated
- Business-friendly datasets created
- Optimized for analytics and dashboards

**Gold Datasets**
- Patient admissions analytics
- Diagnosis & disease patterns
- Treatment & medication trends
- Cost & claims analysis
- Preventive care & immunization insights

**Technology Used**
- Spark SQL
- Delta Lake (Gold)
- Databricks SQL

---

### 🔹 Step 6: Dashboards & Visualization

**What happens**
- Interactive dashboards built on Gold layer
- Near real-time analytics
- Business and clinical insights generated

**Dashboards Implemented**
- 🏥 Patient Admissions Dashboard  
- 🧬 Disease Patterns Dashboard  
- 💊 Treatment Trends Dashboard  
- 💰 Cost & Claims Analysis Dashboard  
- 💉 Preventive Care & Immunization Dashboard  

**Visualization Tools**
- Databricks SQL Dashboards
- Power BI (optional external BI)

---

### 🔹 Step 7: Governance, Reliability & Auditing

**What happens**
- End-to-end data governance applied
- Full lineage from raw → analytics
- Schema evolution handled safely
- Historical versions retained

**Key Capabilities**
- ACID transactions
- Time travel & rollback
- Role-based access control
- Audit-ready data

**Technology Used**
- Delta Lake
- Unity Catalog
- Databricks Lakehouse

---

<img width="1024" height="559" alt="image" src="https://github.com/user-attachments/assets/a48cd4c1-8bf6-4311-93e2-f760863ecdf7" />

---

## 5. Medallion Architecture Implementation

### 🟫 Bronze Layer – Raw Ingestion

**Purpose**
Capture raw FHIR JSON exactly as received, without transformation.

**Key Characteristics**

* Raw JSON stored in Delta format
* Append-only ingestion
* Metadata captured:

  * Source file path
  * Ingestion timestamp

**Processing Logic**

* Read FHIR bundle JSON files
* Store full bundle as-is
* Explode `entry[]` for downstream processing

**Outcome**

* Trusted raw data layer
* Replayable ingestion
* Audit-friendly storage

---

### ⚪ Silver Layer – Normalized FHIR Resources

**Purpose**
Transform raw JSON into **structured, queryable healthcare tables**.

**Core Transformations**

* Explode nested JSON structures
* Flatten complex attributes
* Extract FHIR references (UUID-based)
* Normalize timestamps and codes
* Deduplicate records

**Silver Tables Created**

* `patient`
* `encounter`
* `condition`
* `observation`
* `procedure`
* `medication_request`
* `immunization`
* `diagnostic_report`
* `explanation_of_benefit`

Each table represents **one FHIR resource type**.

**Benefits**

* One-to-one mapping with FHIR concepts
* SQL-friendly schema
* Reusable for analytics and ML

---

### 🟨 Gold Layer – Analytics & Insights

**Purpose**
Provide **business-ready datasets** for dashboards and decision-making.

**Gold Tables / Views**

* `patient_admissions`
* `disease_patterns`
* `procedure_trends`
* `medication_trends`
* `immunization_coverage`
* `cost_analysis`

**Transformations**

* Join multiple Silver tables
* Apply aggregations and metrics
* Optimize for BI performance

**Use Cases**

* Admission analysis
* Diagnosis breakdown
* Treatment trends
* Cost insights

---

## 📂 Repository Structure

.
├── data/

│   └── raw_fhir/                             # Raw FHIR JSON files (sample / reference)

│

├── bronze/

│   └── bronze_ingestion.py                     # Raw FHIR ingestion logic

│

├── silver/

│   ├── patient.py                            # Patient resource transformation

│   ├── encounter.py                          # Encounter normalization

│   ├── condition.py                           # Diagnosis (Condition) processing

│   ├── observation.py                         # Clinical observations & labs

│   ├── procedure.py                         # Medical procedures

│   ├── medication_request.py                    # Prescribed medications

│   ├── immunization.py                    # Immunization records

│   ├── diagnostic_report.py                 # Diagnostic reports

│   └── explanation_of_benefit.py            # Insurance & billing data

│

├── gold/

│   ├── patient_encounter_summary.sql  # Core analytics dataset

│   ├── admissions_dashboard.sql       # Patient admissions analytics

│   ├── disease_patterns.sql           # Diagnosis & disease trends

│   ├── treatment_trends.sql           # Treatment & medication trends

│   ├── cost_analysis.sql              # Financial & claim analysis

│   └── preventive_care.sql            # Immunization & preventive care

│

├── dashboards/

│   ├── databricks_sql/              # Databricks SQL dashboard definitions

│   └── power_bi/                    # Power BI reports & visuals

│

├── docs/

│   ├── architecture_diagram.png     # System architecture diagram

│   └── project_documentation.pdf    # Complete project documentation

│

├── .gitignore

├── README.md

└── LICENSE

---

## 🏦 6. Unity Catalog & Governance

**Unity Catalog** is used for:

* Centralized metadata management
* Schema organization
* Secure access control
* Lineage tracking

### Catalog Structure

* `fhir_healthcare_analytics_bronze`
* `fhir_healthcare_analytics_silver`
* `fhir_healthcare_analytics_gold`

**Governance Capabilities**

* Table-level access
* Column-level visibility
* Audit logs
* Clear data ownership

---

## 🔁 7. Data Flow Summary

1. FHIR JSON files uploaded to storage
2. Bronze layer ingests raw JSON
3. Silver layer extracts & normalizes resources
4. Gold layer aggregates analytics views
5. Dashboards consume Gold tables

---

## 🛠️ 8. Data Engineering Best Practices Used

* Delta Lake ACID guarantees
* Schema evolution handling
* Idempotent transformations
* Separation of concerns
* Scalable Spark processing
* Time travel & versioning
* Performance-optimized Delta tables

---

## ⚙️ 9. Technology Stack

| Category      | Technology                |
| ------------- | ------------------------- |
| Platform      | Databricks Lakehouse      |
| Storage       | Delta Lake                |
| Processing    | Apache Spark (PySpark)    |
| Query         | Spark SQL                 |
| Governance    | Unity Catalog             |
| Visualization | Databricks SQL Dashboards |
| Language      | Python, SQL               |

---

## 📈 📊 10. Analytics & Dashboards

Dashboards are built using **Databricks SQL** on Gold tables.

### Key Dashboards

1. **Patient Admissions Dashboard**

   * Admissions over time
   * Length of stay
   * Encounter counts

2. **Diagnosis Breakdown Dashboard**

   * Most common conditions
   * Disease trends
   * Patient-wise diagnosis

3. **Treatment Trends Dashboard**

   * Procedures performed
   * Medication usage
   * Treatment vs diagnosis mapping

---

## 📊 11. Data Quality & Reliability

Implemented using Delta Lake features:

* ACID transactions
* Schema enforcement
* Schema evolution
* Time travel for recovery
* Consistent reads & writes

---

## 🤝 12. Team & Roles (Project Structure)

**Team Name:** Delta Force

| Role                | Responsibility       |
| ------------------- | -------------------- |
| Ingestion Team      | Bronze ingestion     |
| Transformation Team | Silver normalization |
| Analytics Team      | Gold modeling        |
| Dashboard Team      | BI dashboards        |
| ML Analytics Team   | Advanced analytics   |
| Governance Team     | Unity Catalog        |

**Your Role (Angad Kumar)**

* Silver & Gold layer development
* Data modeling
* Analytics design
* Documentation & governance support

---

## 🚀 13. Project Outcomes

* Successfully processed complex FHIR healthcare data
* Built scalable healthcare analytics pipeline
* Enabled analytics-ready healthcare datasets
* Demonstrated real-world healthcare data engineering
* Enterprise-grade architecture & governance


---

## 📜 License

This project is released for educational and demonstration purposes.  
Synthetic healthcare data is used to ensure privacy and compliance.

---

## ⭐ Final Note

This repository represents a **production-aligned healthcare data engineering solution** built using modern Lakehouse principles. It is suitable for:

- Enterprise POCs
- Learning reference
- Interview ready readme files
- Healthcare analytics demonstrations

If you find this project useful, consider giving it a ⭐ on GitHub!

---

