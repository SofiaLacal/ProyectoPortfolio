const express = require("express");
const exphbs = require("express-handlebars");

const app = express();
app.use(express.static("."));

// 🔥 IMPORTANTE: Los archivos estáticos deben ir ANTES de las rutas
app.use(express.static("html_plantilla"));

// Configurar Handlebars
app.engine("handlebars", exphbs.engine());
app.set("view engine", "handlebars");

// Rutas
app.get("/", (req, res) => {
    res.render("index");
})

app.get("/portfolioJavier", (req, res) => {
    res.render("javierportfolio", { layout: "portfolio" });
})

app.get("/portfolioPablo", (req, res) => {
    res.render("pabloportfolio", { layout: "portfolio" });
})

app.get("/portfolioLaura", (req, res) => {
    res.render("lauraportfolio", { layout: "portfolio" });
})

app.get("/portfolioSofia", (req, res) => {
    res.render("sofiaportfolio", { layout: "portfolio" });
})

// El listen al final
app.listen(3000, () => {
    console.log("Servidor corriendo en http://localhost:3000");
});