--code to generate tableone extract
-- This code is used to create a tableone extract for the demographics of the study population
-- Please write the ouput to a csv file called tableone.csv

SELECT 
    v.visit_occurrence_id AS encounter_id,
    v.person_id,
    FLOOR(DATEDIFF(v.visit_start_datetime, p.date_of_birth) / 365.25) AS age_at_encounter,
    cg.concept_name AS gender_concept_name,
    p.gender_source_value,
    cr.concept_name AS race_concept_name,
    p.race_source_value,
    ce.concept_name AS ethnicity,
    p.ethnicity_source_value,
    cs.care_site_name,
    cv.concept_name AS visit_concept_name
FROM visit_occurrence v
JOIN person p
    ON v.person_id = p.person_id
LEFT JOIN concept cv
    ON v.visit_concept_id = cv.concept_id
LEFT JOIN care_site cs
    ON v.care_site_id = cs.care_site_id
LEFT JOIN concept cg
    ON p.gender_concept_id = cg.concept_id
LEFT JOIN concept cr
    ON p.race_concept_id = cr.concept_id
LEFT JOIN concept ce
    ON p.ethnicity_concept_id = ce.concept_id
WHERE cv.concept_id IN (9203, 262)

