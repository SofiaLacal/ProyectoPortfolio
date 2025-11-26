CREATE DATABASE IF NOT EXISTS portfolio_db;
USE portfolio_db;

CREATE TABLE IF NOT EXISTS equipo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    apellidos VARCHAR(150) NOT NULL,
    descripcion TEXT NOT NULL,
    linkedin VARCHAR(255),
    github VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS tecnologias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100) NOT NULL,
    nivel ENUM('Básico', 'Intermedio', 'Avanzado', 'Experto') NOT NULL,
    categoria ENUM('Frontend', 'Backend', 'DevOps', 'Data', 'Otro') DEFAULT 'Otro',
    orden INT DEFAULT 0,
    equipo_id INT NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES equipo(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS idiomas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    idioma VARCHAR(100) NOT NULL,
    nivel ENUM('Básico', 'Intermedio', 'Avanzado', 'Nativo') NOT NULL,
    certificacion VARCHAR(150),
    equipo_id INT NOT NULL,
    FOREIGN KEY (equipo_id) REFERENCES equipo(id) ON DELETE CASCADE
);

CREATE TABLE IF NOT EXISTS proyectos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombreProyecto VARCHAR(150) NOT NULL,
    descripcion TEXT NOT NULL,
    linkRepo VARCHAR(255),
    tecnologias VARCHAR(255),
    equipo_id INT NOT NULL,
    orden INT DEFAULT 0,
    FOREIGN KEY (equipo_id) REFERENCES equipo(id) ON DELETE CASCADE
);
