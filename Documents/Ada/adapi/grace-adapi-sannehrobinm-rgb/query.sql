
select * from themes;

/*  SELECT  
 FROM resources
 FULL JOIN skills, resources, resources_skills, themes, resources_type;  */

/* SELECT
    r.id AS resource_id,
    r.title AS resource_title,
    r.description AS resource_description,
    t.name AS theme_name,
    r.type AS type_name,                -- ENUM directement
    STRING_AGG(s.name, ', ') AS skills
FROM resources r
JOIN themes t ON r.theme_id = t.id
JOIN resources_skills rs ON rs.resource_id = r.id
JOIN skills s ON s.id = rs.skill_id
GROUP BY r.id, r.title, r.description, t.name, r.type;
 */

/* --Vérifier les noms exacts des colonnes
\d resources;  -- dans psql */
--obtenir le nom de toute les colonnes:
/* SELECT column_name
FROM information_schema.columns
WHERE table_name = 'resources'; */


/* SELECT * FROM resources;
SELECT theme_id FROM resources;  */

--récupérer la liste des thèmes:(ok)
/* SELECT DISTINCT theme_id
FROM resources;

--les ressources triées par date de mise à jour(ok)
/* SELECT *
FROM resources
ORDER BY updated_at DESC; */

 --[ ] Récupérer uniquement le nom et l'url des ressources de type exercice (pas bon probleme de nomination)

/*  SELECT DISTINCT title, url 
FROM resources 
WHERE resources_type = exercice; */

     --   [ ] Récupérer le titre et la description des ressources d'Ada uniquement (ok)
  
/* SELECT title, description
FROM resources; */

    --   [ ] Récupérer les ressources qui ont la compétence JavaScript associée (pas bon probleme de nomination)
/*      SELECT DISTINCT title 
FROM resources where  resources ILIKE '%JavaScript%'; */

-- Si skills est un texte avec des mots séparés par des virgules (pas bon probleme de nomination)
SELECT skills
FROM resources
WHERE skills ILIKE '%JavaScript%';

/*     --   [ ] Récupérer les ressources dont le titre contient le mot "react" (avec ou sans majuscules)
      */

/* --## 💎 Bonus possibles
--   [ ] Récupérer la liste des thèmes avec le nombre de ressources par thème

--   [ ] Récupérer le nom et l'url de toutes les ressources avec un tableau/liste contenant l'ensemble de leurs skills associés

--   [ ] Récupérer les 5 ressources les plus récentes avec leur thème

--   [ ] Récupérer toutes les compétences qui ne sont associées à aucune ressource */