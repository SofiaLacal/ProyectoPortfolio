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
        layout: 'portfolio',
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

module.exports = router;