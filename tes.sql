-- Créer la table uniquement si elle n'existe pas
CREATE TABLE IF NOT EXISTS test_users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    email VARCHAR(50)
);

-- Insérer des données
INSERT INTO test_users (name, email) VALUES
('Alice', 'alice@example.com'),
('Bob', 'bob@example.com');

-- Vérifier les données
SELECT * FROM test_users;




