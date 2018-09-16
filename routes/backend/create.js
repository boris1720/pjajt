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


var loggedin = function (req, res, next) {
    if (req.isAuthenticated()) {
        next()
    } else {
        res.redirect('/login')
    }
}

router.get('/', loggedin, function (req, res, next) {
    res.render('backend/create', {
        user: req.user
    })
});

router.get('/iskustva', loggedin, function (req, res, next) {
    res.render('backend/createiskustva', {
        user: req.user
    })
});

/* POST submit */
router.post('/submit', function (req, res, next) {

    var sql = "INSERT INTO `novosti` SET ?";
    var post  = {title: req.body.title, description: req.body.description, img: req.body.img, author:req.body.author };
    connection.query(sql,post, function (err, result) {
        if (!err) {
            res.redirect('/admin');
        }
        else {
            console.log(err);
        }
    });

});
router.post('/submiti', function (req, res, next) {

    var sql = "INSERT INTO `iskustva` SET ?";
    var post  = {title: req.body.title, description: req.body.description, author: req.body.author, location: req.body.location, substance: req.body.substance };
    connection.query(sql,post, function (err, result) {
        if (!err) {
            res.redirect('/admin');
        }
        else {
            console.log(err);
        }
    });

});

module.exports = router;