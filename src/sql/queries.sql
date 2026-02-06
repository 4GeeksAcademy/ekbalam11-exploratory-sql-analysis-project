
-- SELECT * FROM regions;
-- SELECT * FROM species;
-- SELECT * FROM climate;
-- SELECT * FROM observations;


-- MISSION 1
-- What are the first 10 recorded observations?
-- Use LIMIT to show only part of the table;
SELECT * FROM observations
LIMIT 10;


-- MISSION 2
-- Which region identifiers (region_id) appear in the data?
-- Use SELECT DISTINCT to avoid duplicates;
SELECT DISTINCT region_id as region FROM observations;


-- MISSION 3
-- How many distinct species (species_id) have been observed?
-- Combine COUNT with DISTINCT to avoid counting duplicates;
SELECT COUNT(DISTINCT species_id) FROM observations;


-- MISSION 4
-- How many observations are there for the region with region_id = 2?
-- Apply a condition with WHERE;
SELECT COUNT(region_id) FROM observations
WHERE region_id = 2;

-- MISSION 5
-- How many observations were recorded on 1998-08-08?
-- Filter by exact date using equality;
SELECT COUNT(*) as observations_per_day
FROM observations
WHERE observation_date = '1998-08-08';


--------- LEVEL 2 ---------
-- MISSION 6
-- Which region_id has the most observations?
-- Group by region and count how many times each appears;
SELECT region_id, COUNT(*) as total_observations
FROM observations
GROUP BY region_id
ORDER BY total_observations DESC
LIMIT 1;


-- MISSION 7
-- What are the 5 most frequent species_id?
-- Group, order by descending count, and limit the result;
SELECT species_id, COUNT(*) as total_species
FROM observations
GROUP BY species_id
ORDER BY total_species DESC
LIMIT 10;


-- MISSION 8
-- Which species (species_id) have fewer than 5 records?
-- Group by species and use HAVING to apply a condition;
SELECT species_id, COUNT(*) as total_species
FROM observations
GROUP BY species_id
HAVING COUNT(*) < 5
ORDER BY total_species DESC;

-- MISSION 9
-- Which observers (observer) recorded the most observations?
-- Group by observer name and count the records;
SELECT observer, COUNT(*) AS total_observators 
FROM observations
GROUP BY observer
ORDER BY total_observators DESC;


--------- LEVEL 3 ---------
-- MISSION 10
-- Show the region name (regions.name) for each observation.
-- Join observations with regions using region_id;
SELECT regions.name FROM observations AS all_observations
JOIN regions ON all_observations.region_id = regions.id;

-- MISSION 11
-- Show the scientific name of each recorded species (species.scientific_name).
-- Join observations with species using species_id;
SELECT DISTINCT species.scientific_name FROM observations AS all_species_names
JOIN species ON all_species_names.species_id = species.id;


-- MISSION 12
-- Which is the most observed species in each region?
-- Group by region and species, and order by count;
SELECT regions.name AS region_name,
       species.common_name,
       COUNT(*) AS observation_count FROM observations
JOIN regions ON observations.region_id = regions.id 
JOIN species on observations.species_id = species.id
GROUP BY regions.name, species.common_name
ORDER BY region_name, observation_count DESC;