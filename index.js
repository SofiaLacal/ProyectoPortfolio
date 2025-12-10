const express = require("express");
const exphbs = require("express-handlebars");
const rutas = require("./routes/rutas");
const app = express();

app.listen(3000);

app.engine("handlebars", exphbs.engine());

app.set("view engine", "handlebars");

app.use(express.static("html_plantilla"));

app.get("/", (req, res) => {
    res.render("index");
})

app.use("/", rutas);