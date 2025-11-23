
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
/* app.get("/portfolios", (req, res) => {
    res.render("mainportfolio");
})  */

app.use(express.static("html_plantilla"));