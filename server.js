const path = require("path");
const express = require("express");
const ejs = require("ejs");
const bodyParser = require("body-parser");
const mysqlConnection = require("./connection");
const indexRoutes = require("./routes/index");

var app = express();
app.use(bodyParser.json());

app.use("/index",indexRoutes);


app.listen(3000);