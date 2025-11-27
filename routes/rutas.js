const express = require('express');
const router = express.Router();
const db = require('../db.js');

router.get('/portfolioPablo', async (req, res) => {
    try {
      const [miembro] = await db.query('SELECT * FROM equipo WHERE id = 2');
      const [idiomas] = await db.query('SELECT * FROM idiomas WHERE equipo_id = 2');
      const [tecnologias] = await db.query('SELECT * FROM tecnologias WHERE equipo_id = 2 ORDER BY orden');
      const [proyectos] = await db.query('SELECT * FROM proyectos WHERE equipo_id = 2 ORDER BY orden');
  
      if (!miembro || miembro.length === 0) {
        return res.status(404).send('No se encontró el miembro del equipo con id 2');
      }
  
      res.render('pabloportfolio', {
        miembro: miembro[0],
        idiomas: idiomas || [],
        tecnologias: tecnologias || [],
        proyectos: proyectos || []
      });
    } catch (err) {
      console.error('Error detallado:', err);
      console.error('Stack:', err.stack);
      res.status(500).send(`Error al cargar portfolio de Pablo: ${err.message}`);
    }
});

router.get('/portfolioSofia', async (req, res) => {
    try {
      const [miembro] = await db.query('SELECT * FROM equipo WHERE id = 4');
      const [idiomas] = await db.query('SELECT * FROM idiomas WHERE equipo_id = 4');
      const [tecnologias] = await db.query('SELECT * FROM tecnologias WHERE equipo_id = 4 ORDER BY orden');
      const [proyectos] = await db.query('SELECT * FROM proyectos WHERE equipo_id = 4 ORDER BY orden');
  
      if (!miembro || miembro.length === 0) {
        return res.status(404).send('No se encontró el miembro del equipo con id 4');
      }
  
      res.render('sofiaportfolio', {
        miembro: miembro[0],
        idiomas: idiomas || [],
        tecnologias: tecnologias || [],
        proyectos: proyectos || []
      });
    } catch (err) {
      console.error('Error detallado:', err);
      console.error('Stack:', err.stack);
      res.status(500).send(`Error al cargar portfolio de Sofía: ${err.message}`);
    }
});

router.get('/portfolioJavier', async (req, res) => {
    try {
      const [miembro] = await db.query('SELECT * FROM equipo WHERE id = 3');
      const [idiomas] = await db.query('SELECT * FROM idiomas WHERE equipo_id = 3');
      const [tecnologias] = await db.query('SELECT * FROM tecnologias WHERE equipo_id = 3 ORDER BY orden');
      const [proyectos] = await db.query('SELECT * FROM proyectos WHERE equipo_id = 3 ORDER BY orden');
  
      if (!miembro || miembro.length === 0) {
        return res.status(404).send('No se encontró el miembro del equipo con id 3');
      }
  
      res.render('javierportfolio', {
        miembro: miembro[0],
        idiomas: idiomas || [],
        tecnologias: tecnologias || [],
        proyectos: proyectos || []
      });
    } catch (err) {
      console.error('Error detallado:', err);
      console.error('Stack:', err.stack);
      res.status(500).send(`Error al cargar portfolio de Javier: ${err.message}`);
    }
});

router.get('/portfolioLaura', async (req, res) => {
    try {
      const [miembro] = await db.query('SELECT * FROM equipo WHERE id = 1');
      const [idiomas] = await db.query('SELECT * FROM idiomas WHERE equipo_id = 1');
      const [tecnologias] = await db.query('SELECT * FROM tecnologias WHERE equipo_id = 1 ORDER BY orden');
      const [proyectos] = await db.query('SELECT * FROM proyectos WHERE equipo_id = 1 ORDER BY orden');
  
      if (!miembro || miembro.length === 0) {
        return res.status(404).send('No se encontró el miembro del equipo con id 1');
      }
  
      res.render('lauraportfolio', {
        miembro: miembro[0],
        idiomas: idiomas || [],
        tecnologias: tecnologias || [],
        proyectos: proyectos || []
      });
    } catch (err) {
      console.error('Error detallado:', err);
      console.error('Stack:', err.stack);
      res.status(500).send(`Error al cargar portfolio de Laura: ${err.message}`);
    }
});

module.exports = router;