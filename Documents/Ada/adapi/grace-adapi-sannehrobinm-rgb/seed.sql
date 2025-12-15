INSERT INTO themes (name, description) 
VALUES
('Frontend', 'c'' est du Frontend'),
('Backend', 'c'' est du Backend'),
('Base de données', 'c'' est de la Base de données'),
('DevOps', 'c'' est du Devops');

INSERT INTO skills (name) 
VALUES
('HTML'),
('CSS'),
('JavaScript'),
('React'),
('SQL'),
('PostgreSQL'),
('API REST'),
('Docker'), 
('MarieTips'),
('charleTips');

INSERT INTO resources (title, url, description, type, is_ada, theme_id) 
VALUES
('Introduction à HTML', 'https://developer.mozilla.org/fr/docs/Web/HTML', '','guide', false, 1),
('Apprendre le CSS', 'https://developer.mozilla.org/fr/docs/Web/CSS', '', 'guide', false, 1),
('Tutoriel JavaScript moderne', 'https://javascript.info', '', 'video', false, 1),
('Créer une API REST en Node.js', 'https://example.com/api-rest', '', 'projet', false, 2),
('Cours complet SQL', 'https://sqlcourse.com', '', 'guide', false, 3),
('Installer PostgreSQL', 'https://example.com/postgres-install', '', 'video', false, 3),
('Découvrir Docker', 'https://example.com/docker-intro', '', 'guide', false, 3),
('Ada Univers (MarieTips)', 'https://drawsql.app/', '', 'exercice', true, 3),
('Ada Univers (CharleTips)', 'https://excalidraw.com/#json=gaqGGBgNiJVsGPgPMVEo4,HGaOLMbPFX5s9LMg3rPR4A', '', 'exercice', true, 3);



INSERT INTO resources_skills (resource_id, skill_id) 
VALUES
(1, 1), -- HTML guide → HTML
(2, 2), -- CSS guide → CSS
(3, 3), -- JS tutorial → JavaScript
(3, 4), -- JS tutorial → React (ex: touches React)
(4, 7), -- API REST project → API REST
(5, 5), -- SQL course → SQL
(6, 6), -- PostgreSQL install → PostgreSQL
(7, 8), -- Docker intro → Docker
(8, 9), -- MarieTips guide  → MarieTips
(9,10); -- CharleTips guide  → CharleTips