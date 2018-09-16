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

/* GET iskustva page. */
connection.query('SELECT * from vesti ORDER BY vesti_id DESC', function(err, rows) {
    if (!err){
        router.get('/', function(req, res, next) {
            res.render('iskustva', { title: 'Psajt', data: rows });
        });
    }
    else{
        console.log('Error while performing Query.');
    }
});

module.exports = router;
