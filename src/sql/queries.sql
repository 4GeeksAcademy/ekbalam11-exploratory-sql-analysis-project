
-- SELECT * FROM regions;
-- SELECT * FROM species;
-- SELECT * FROM climate;
-- SELECT * FROM observations;


-- MISSION 1
-- ¿Cuáles son las primeras 10 observaciones registradas?
-- Utiliza LIMIT para mostrar solo una parte de la tabla;
-- SELECT * FROM observations;
-- LIMIT 10



-- MISSION 2
-- ¿Qué identificadores de región (region_id) aparecen en los datos?
-- Usa SELECT DISTINCT para evitar repeticiones;
-- SELECT DISTINCT region_id as region FROM observations;


-- MISSION 3
-- ¿Cuántas especies distintas (species_id) se han observado?
-- Combina COUNT con DISTINCT para no contar duplicados;
-- SELECT COUNT(DISTINCT species_id) FROM observations;


-- MISSION 4
-- Your query here;
-- ¿Cuántas observaciones hay para la región con region_id = 2?
-- Aplica una condición con WHERE;
-- SELECT COUNT(region_id) FROM observations
-- WHERE region_id = 2;

-- MISSION 5
-- ¿Cuántas observaciones se registraron el día 1998-08-08?
-- Filtra por fecha exacta usando igualdad;
-- SELECT COUNT(*) as observations_per_day
-- FROM observations
-- WHERE observation_date = '1998-08-08';

-- MISSION 6
-- Your query here;
-- ¿Cuál es el region_id con más observaciones?
-- Agrupa por región y cuenta cuántas veces aparece cada una;
SELECT region_id, COUNT(*) as total_observations
FROM observations
GROUP BY region_id
ORDER BY total_observations DESC
LIMIT 1;


-- MISSION 7
-- Your query here;
-- ¿Cuáles son los 5 species_id más frecuentes?
-- Agrupa, ordena por cantidad descendente y limita el resultado;
SELECT species_id, COUNT(*) as total_species
FROM observations
GROUP BY species_id
ORDER BY total_species DESC
LIMIT 10;


-- MISSION 8
-- Your query here;
-- ¿Qué especies (species_id) tienen menos de 5 registros?
-- Agrupa por especie y usa HAVING para aplicar una condició;
SELECT species_id, COUNT(*) as total_species
FROM observations
GROUP BY species_id
HAVING COUNT(*) < 5
ORDER BY total_species DESC;

-- MISSION 9
-- Your query here;
-- ¿Qué observadores (observer) registraron más observaciones?
-- Agrupa por el nombre del observador y cuenta los registros;
SELECT observer, COUNT(*) as total_observations
FROM observations
GROUP BY observer
ORDER BY total_observations DESC;