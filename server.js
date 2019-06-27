'user strict';

const express = require('express');
const app = express();

var bodyParser = require('body-parser');
var urlencodedParser = bodyParser.urlencoded({extended: false});

var mysql = require('mysql');

// use the public folder for stylesheets, images, etc.
app.use(express.static('public'));

//view engine
app.set('view engine', 'pug');

app.listen(3000, ()=>{
    console.log('app listening on localhost:3000');
});

// create connecion
var con = mysql.createConnection({
    host: "localhost",
    port: 3306,
    user: "shayak",
    password: "shayak123",
    database: "flyingpaisa"
})

// database connection check
con.connect(function(err){
    if(!err){
        console.log("database is connected ...");
    } else {
        console.log("ERROR: error in connecting database ...");
    }
})

app.get('/stores_data', (req, res)=>{
    var sql = "SELECT * FROM stores;";

    //executing the query
    con.query(sql, (err, result) => {
        if(err) throw err;
        // else
        res.json(result)
        res.end();
        console.log("displayed stores data");
    })
});

app.get('/stores_data', (req, res)=>{
    var sql = "SELECT * FROM stores;";

    //executing the query
    con.query(sql, (err, result) => {
        if(err) throw err;
        // else
        res.json(result)
        res.end();
        console.log("displayed stores data");
    })
});

app.get('/stores', (req, res)=>{
    res.render('stores');
});

app.post('/stores/add', urlencodedParser, (req, res)=>{
    var response = {
        title: req.body.title,
        description: req.body.description,
        cashbackRates: req.body.cashback_rates,
        coupons: req.body.coupons,
        redirectLink: req.body.redirect_link
    }

    var sql = "insert into stores(title, description, cashbackrates, "
        + "coupons, redirect_link) values('" + response.title + "', '"
        + response.description + "', '" + response.cashbackRates + "', '"
        + response.coupons + "', '" + response.redirectLink + "');";

    console.log(sql);

    con.query(sql, (err)=>{
        if(err){
            console.log(err);
            res.end('there was an error, please go back and retry');
        } else {
            res.end("<html><body>data has been inserted</body></html>");
        }
    })
});



app.get('/tracking_data', (req, res) => {
    var sql = "SELECT * FROM tracking;";

    //executing the query
    con.query(sql, (err, result) => {
        if(err) throw err;
        // else
        res.json(result)
        res.end();
        console.log("displayed tracking data");
    })
});

app.get('/users_data', (req, res) => {
    var sql = "SELECT * FROM sliderimage;";

    //executing the query
    con.query(sql, (err, result) => {
        if(err) throw err;
        // else
        res.json(result)
        res.end();
        console.log("displayed users data");
    })
});