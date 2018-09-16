var express = require('express');
var router = express.Router();


/* konekcija na bazu */
var mysql      = require('mysql');
var connection = mysql.createConnection({
    host     : 'localhost',
    user     : 'root',
    password : '',
    database : 'psajt'
});

connection.connect();

/* GET vesti page. */
connection.query('SELECT * from novosti ORDER BY novosti_id DESC', function(err, rows) {
    if (!err){
        router.get('/', function(req, res, next) {
            res.render('novosti', { title: 'Psajt', data: rows });
        });
    }
    else{
        console.log('Error while performing Query.');
    }
});

/* GET novist page. */
router.get('/:id', function(req, res, next) {
    var sql = "SELECT * from novosti WHERE novosti_id = ?";
    var id = req.param("id");
    connection.query(sql ,id , function(err, rows) {
        if (!err) {
            res.render('novost', {title: 'Novosti', id: id, data: rows});
        }
        else {
            console.log('Error while performing Query.');
        }
    });
});

module.exports = router;
