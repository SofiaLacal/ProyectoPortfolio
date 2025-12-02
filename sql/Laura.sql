INSERT INTO idiomas (idioma, nivel, equipo_id)
VALUES ('Español', 'Nativo', 1);

INSERT INTO idiomas (idioma, nivel, equipo_id)
VALUES ('Inglés', 'Intermedio', 1);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'NebriMatch',
    'Aplicación Web completa siguiendo una arquitectura cliente/servidor limpia y cubriendo todas las etapas necesarias: toma de requisitos, prototipado, pruebas y despliegue. Con Node y React.',
    NULL,
    'Node, React',
    1,
    1
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Glosario de terminos',
    'Proyecto Java de creación de términos en glosario',
    'https://github.com/laurahigueraromero/AplicacionGlosario',
    'Java, SQL',
    1,
    2
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Aplicación de recursos humanos',
    'aplicación para gestión de empleados de una empresa de RRHH',
    'https://github.com/laurahigueraromero/empresaCopia',
    'Java, SQL',
    1,
    3
);

INSERT INTO proyectos (nombreProyecto, descripcion, linkRepo, tecnologias, equipo_id, orden)
VALUES (
    'Aplicación Hotel',
    'aplicación para gestión de recepción de clientes en un hotel',
    'https://github.com/laurahigueraromero/Registro_Clientes_Recepcion',
    'Java, SQL',
    1,
    4
);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Java', 'Avanzado', 'Backend', 1, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('SQL', 'Intermedio', 'Data', 2, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Node.js', 'Intermedio', 'Backend', 3, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Flowise', 'Intermedio', 'Otro', 4, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('HTML', 'Alto', 'Frontend', 5, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('CSS', 'Intermedio', 'Frontend', 6, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('JavaScript', 'Intermedio', 'Frontend', 7, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('React', 'Intermedio', 'Frontend', 8, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('GitHub', 'Intermedio', 'DevOps', 9, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('shell', 'Intermedio', 'DevOps', 10, 1);

INSERT INTO tecnologias (nombre, nivel, categoria, orden, equipo_id)
VALUES ('Bash', 'Intermedio', 'DevOps', 11, 1);

