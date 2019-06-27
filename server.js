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

app.get('/sliderimage_data', (req, res)=>{
    var sql = "SELECT * FROM sliderimage;";

    //executing the query
    con.query(sql, (err, result) => {
        if(err) throw err;
        // else
        res.json(result)
        res.end();
        console.log("displayed sliderimage data");
    })
});

app.get('/sliderimage', (req, res)=>{
    res.render('sliderimage');
})

app.post('/sliderimage/add', urlencodedParser, (req, res)=>{
    var response = {
        image: req.body.image,
        url: req.body.url
    }

    var sql = "INSERT INTO sliderimage(image, url) VALUES('" + response.image
            + "', '" + response.url + "');";

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

app.get('/tracking', (req, res)=>{
    res.render('tracking');
})

app.post('/tracking/add', urlencodedParser, (req, res)=>{
    var response = {
        p1 : req.body.p1,
        p2 : req.body.p2,
        p3 : req.body.p3,
        p4 : req.body.p4,
        p5 : req.body.p5,
        p6 : req.body.p6,
        p7 : req.body.p7,
        p8 : req.body.p8,
        p9 : req.body.p9,
        p10 : req.body.p10
    }

    var sql = "INSERT INTO tracking(p1, p2, p3, p4, p5, p6, p7, p8, p9, p10) " 
        + "VALUES('" + + response.p1 + "', '" + response.p2 + "', '" + response.p3 
        + "', '" + response.p4 + "', '" + response.p5 + "', '" + response.p6 + "', '" 
        + response.p7 + "', '"  + response.p8 + "', '" + response.p9 + "', '" 
        + response.p10 + "');";

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

app.get('/users_data', (req, res) => {
    var sql = "SELECT * FROM users;";

    //executing the query
    con.query(sql, (err, result) => {
        if(err) throw err;
        // else
        res.json(result)
        res.end();
        console.log("displayed users data");
    })
});