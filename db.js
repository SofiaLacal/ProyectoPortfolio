const mysql = require('mysql2/promise');

const pool = mysql.createPool({
  host: 'localhost',
  user: 'root',         
  password: '',
  database: 'portfolio_db',
  waitForConnections: true,
  connectionLimit: 10,
  queueLimit: 0
});

pool.getConnection()
  .then(connection => {
    console.log('Conexión a MySQL establecida correctamente');
    connection.release();
  })
  .catch(err => {
    console.error('Error al conectar con MySQL:', err.message);
  });

module.exports = pool;