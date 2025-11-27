INSERT INTO idiomas (idioma, nivel, equipo_id)
VALUES ('Español', 'Nativo', 3);

INSERT INTO idiomas (idioma, nivel, equipo_id)
VALUES ('Inglés', 'Intermedio', 3);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'NebriGame',
    'Aplicación Web completa siguiendo una arquitectura cliente/servidor limpia y cubriendo todas las etapas necesarias: toma de requisitos, prototipado, pruebas y despliegue. Con Node y React.',
    NULL,
    'Node, React',
    3,
    1
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Aventura conversacional',
    'Proyecto en Java que consiste en una historia interactiva basada en texto, con conexión a base de datos.',
    NULL,
    'Java, SQL',
    3,
    2
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Página Web de Centro Comercial',
    'Diseño y desarrollo de un sitio web informativo utilizando HTML, CSS, JavaScript y el framework Bootstrap.',
    NULL,
    'HTML, CSS, JavaScript, Bootstrap',
    3,
    3
);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Java', 'Intermedio', 'Backend', 1, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('SQL', 'Intermedio', 'Data', 2, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Node.js', 'Intermedio', 'Backend', 3, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Python', 'Intermedio', 'Backend', 4, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('HTML', 'Intermedio', 'Frontend', 5, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('CSS', 'Intermedio', 'Frontend', 6, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('JavaScript', 'Intermedio', 'Frontend', 7, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Figma', 'Intermedio', 'Otro', 8, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('React', 'Intermedio', 'Frontend', 9, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Git', 'Intermedio', 'DevOps', 10, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('GitHub', 'Intermedio', 'DevOps', 11, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('GitKraken', 'Intermedio', 'DevOps', 12, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Bootstrap', 'Intermedio', 'Frontend', 13, 3);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('WordPress', 'Intermedio', 'FullStack', 14, 3);

