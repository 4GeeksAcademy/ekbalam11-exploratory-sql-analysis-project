
-- SELECT * FROM regions;
-- SELECT * FROM species;
-- SELECT * FROM climate;
-- SELECT * FROM observations;


-- MISSION 1
-- ¿Cuáles son las primeras 10 observaciones registradas?
-- Utiliza LIMIT para mostrar solo una parte de la tabla;
-- SELECT * FROM observations 
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
-- Aplica una condición con WHERE.


-- MISSION 5
-- Your query here;


-- MISSION 6
-- Your query here;


-- MISSION 7
-- Your query here;


-- MISSION 8
-- Your query here;
