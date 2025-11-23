
const express = require("express");
const exphbs = require("express-handlebars");

const app = express();

app.listen(3000);

app.engine("handlebars", exphbs.engine());

app.set("view engine", "handlebars");

//Indico que si voy a home, me cargue home
app.get("/", (req, res) => {
    res.render("index");
})

//Rutas para portfolios
app.get("/portfolioJavier", (req, res) => {
    res.render("javierportfolio");
})

app.get("/portfolioPablo", (req, res) => {
    res.render("pabloportfolio");
})

app.get("/portfolioLaura", (req, res) => {
    res.render("lauraportfolio");
})

app.get("/portfolioSofia", (req, res) => {
    res.render("sofiaportfolio");
})

app.use(express.static("html_plantilla"));