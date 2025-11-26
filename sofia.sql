INSERT INTO idiomas (idioma, nivel, equipo_id)
VALUES ('Español', 'Nativo', 4);

INSERT INTO idiomas (idioma, nivel, equipo_id)
VALUES ('Inglés', 'Intermedio', 4);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'NebriGame',
    'Aplicación web completa siguiendo una arquitectura cliente/servidor limpia y cubriendo todas las etapas necesarias: toma de requisitos, prototipado, pruebas y despliegue. Desarrollada con Node y React.',
    NULL,
    'Node, React',
    4,
    1
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Página Web para Centro Comercial',
    'Desarrollo de una página web con HTML, CSS, JavaScript y Bootstrap.',
    NULL,
    'HTML, CSS, JavaScript, Bootstrap',
    4,
    2
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Azure',
    'Creación de máquinas virtuales y alojamiento de una página web en Azure.',
    NULL,
    'Microsoft Azure',
    4,
    3
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Servidor Apache en Linux',
    'Configuración de servidor web Apache en Linux usando línea de comandos para alojar páginas web accesibles desde clientes Windows.',
    NULL,
    'Linux, Apache',
    4,
    4
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Elige Tu Propia Aventura',
    'Juego desarrollado en Java como una aventura conversacional con entrada y salida de texto, conexión a base de datos y realización de un CRUD.',
    NULL,
    'Java, SQL',
    4,
    5
);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Java', 'Intermedio', 'Backend', 1, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('SQL', 'Intermedio', 'Data', 2, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Node.js', 'Intermedio', 'Backend', 3, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('HTML', 'Avanzado', 'Frontend', 4, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('CSS', 'Avanzado', 'Frontend', 5, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('JavaScript', 'Intermedio', 'Frontend', 6, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('React', 'Intermedio', 'Frontend', 7, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Git', 'Intermedio', 'DevOps', 8, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('GitHub', 'Intermedio', 'DevOps', 9, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('GitKraken', 'Intermedio', 'DevOps', 10, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Teams', 'Intermedio', 'Otro', 11, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Google Meet', 'Intermedio', 'Otro', 12, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Windows', 'Intermedio', 'DevOps', 13, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('macOS', 'Intermedio', 'DevOps', 14, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Office', 'Intermedio', 'Otro', 15, 4);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Figma', 'Intermedio', 'Otro', 16, 4);


