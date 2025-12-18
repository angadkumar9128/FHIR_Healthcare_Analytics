-- View Silver table history
DESCRIBE HISTORY silver.patient;

-- Query previous version of Silver table
SELECT *
FROM silver.patient
VERSION AS OF 1;
