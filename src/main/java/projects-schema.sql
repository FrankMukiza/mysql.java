DROP TABLE IF EXISTS project_category;
DROP TABLE IF EXISTS category;
DROP TABLE IF EXISTS step;
DROP TABLE IF EXISTS material;
DROP TABLE IF EXISTS project;

CREATE TABLE project (
    project_id INT /*AUTO_INCREMENT*/ PRIMARY KEY,
    project_name VARCHAR(128) NOT NULL,
    estimated_hours DECIMAL(7,2),
    actual_hours DECIMAL(7,2),
    difficulty INT
);

CREATE TABLE material (
    material_id INT /*AUTO_INCREMENT*/ PRIMARY KEY,
    project_id INT NOT NULL,
    material_name VARCHAR(128) NOT NULL,
    num_required INT,
    cost DECIMAL(7,2),
  
);

CREATE TABLE step (
    step_id INT /*AUTO_INCREMENT*/ PRIMARY KEY,
    project_id INT NOT NULL,
    step_text TEXT NOT NULL,
    step_order INT NOT NULL,
  
);

CREATE TABLE category (
    category_id INT /*AUTO_INCREMENT*/ PRIMARY KEY,
    category_name VARCHAR(128) NOT NULL
);

CREATE TABLE project_category (
    project_id INT NOT NULL,
    category_id INT NOT NULL
    );
