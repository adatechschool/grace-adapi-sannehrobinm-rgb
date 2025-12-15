CREATE TYPE resources_type AS ENUM ('guide', 'video', 'exercice', 'projet');

CREATE TABLE themes (
    id SERIAL PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
description text,
created_at timestamptz default now(),
up_dated_at timestamptz default now()
);

CREATE TABLE resources (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    url TEXT,
    description TEXT,
    type resources_type,
    is_ada BOOLEAN,
    theme_id INTEGER REFERENCES themes(id),
    updated_at TIMESTAMPTZ DEFAULT NOW(),
    created_at TIMESTAMPTZ  DEFAULT NOW()
);
CREATE TABLE skills (
    id serial PRIMARY KEY,
    name VARCHAR(255) NOT NULL 
);

CREATE TABLE resources_skills (
    resource_id INTEGER REFERENCES resources(id),
    skill_id INTEGER REFERENCES skills(id)  
);


