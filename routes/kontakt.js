var express = require('express');
var router = express.Router();


/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'it255'
});

connection.connect();

/* GET onama page. */
router.get('/', function (req, res, next) {
    res.render('kontakt', {
        title: 'Psajt'
    });
});

module.exports = router;
