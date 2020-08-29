const mongoose = require('mongoose');
const mysql = require('mysql');
const dotenv = require('dotenv');
dotenv.config({
    path: './config.env'
});

process.on('uncaughtException', err => {
    console.log('UNCAUGHT EXCEPTION!!! shutting down...');
    console.log(err.name, err.message);
    process.exit(1);
});

const app = require('./app');

const database = process.env.DATABASE.replace('<PASSWORD>', process.env.DATABASE_PASSWORD);

db = mysql.createConnection({
    host: process.env.DATABASE_HOST,
    user: process.env.DATABASE_USERNAME,
    password: process.env.DATABASE_PASSWORD,
    database: process.env.DATABASE_NAME
  })
// Connect the database
// mongoose.connect(database, {
//     useNewUrlParser: true,
//     useCreateIndex: true,
//     useFindAndModify: false
// }).then(con => {
//     console.log('DB connection Successfully!');
// });

// Start the server
const port = process.env.PORT;
app.listen(port, () => {
    console.log(`Application is running on port ${port}`);
});

process.on('unhandledRejection', err => {
    console.log('UNHANDLED REJECTION!!!  shutting down ...');
    console.log(err.name, err.message);
    server.close(() => {
        process.exit(1);
    });
});

module.exports = app;