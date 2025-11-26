const express = require("express");
const exphbs = require("express-handlebars");
const rutas = require("./routes/rutas");
const app = express();

app.listen(3000);

app.engine("handlebars", exphbs.engine());

app.set("view engine", "handlebars");

// Middleware para archivos estáticos
app.use(express.static("html_plantilla"));

//Indico que si voy a home, me cargue home
app.get("/", (req, res) => {
    res.render("index");
})

// Usar las rutas definidas en rutas.js (después de la ruta home para evitar conflictos)
app.use("/", rutas);