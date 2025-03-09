CREATE DATABASE IF NOT EXISTS recipes_db;
USE recipes_db;

CREATE TABLE recipes (
    recipe_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL
);

CREATE TABLE categories (
    category_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL
)

CREATE TABLE recipe_categories(
recipe_id INT,
category_id INT,
PRIMARY KEY(recipe_id, category_id),
FOREIGN KEY(recipe_id) REFERENCES recipes(recipe_id) ON DELETE CASCADE,
FOREIGN KEY(category_id) REFERENCES categories(category_id) ON DELETE CASCADE
)

CREATE TABLE ingredients (
 ingredient_id INT AUTO_INCREMENT PRIMARY KEY,
 name VARCHAR(150) NOT NULL
)

CREATE TABLE recipe_ingredients(
recipe_id INT,
ingredient_id INT,
PRIMARY KEY(recipe_id, ingredient_id),
FOREIGN KEY(recipe_id) REFERENCES recipes(recipe_id) ON DELETE CASCADE,
FOREIGN KEY(ingredient_id) REFERENCES ingredients(ingredient_id) ON DELETE CASCADE
)

CREATE TABLE steps (
step_id INT AUTO_INCREMENT PRIMARY KEY,
description TEXT NOT NULL
)

CREATE TABLE recipe_steps(
recipe_id INT,
step_id INT,
stepByOrder INT NOT NULL,
PRIMARY KEY(recipe_id, step_id),
FOREIGN KEY(recipe_id) REFERENCES recipes(recipe_id) ON DELETE CASCADE,
FOREIGN KEY(step_id) REFERENCES steps(step_id) ON DELETE CASCADE
)

