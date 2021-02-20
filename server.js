const express = require('express');
const bodyParser = require('body-parser');
const app = express()


var mysql = require('mysql');
var connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'position_app'
});

connection.connect();

app.use(bodyParser.json())


app.post('/inscription', function (req, res) {
    let data = req.body;
    console.log(req.body);
    var sql = `INSERT INTO users (user_name, password, latitude, longitude) VALUES ('${data.user_name}', '${data.password}', '${data.latitude}', '${data.longitude}')`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify({ status: "Bien fait" }))
    });
})

app.post('/authentification', function (req, res) {
    let data = req.body;
    console.log(data);
    var sql = `SELECT * FROM users WHERE user_name = '${data.user_name}' and password = '${data.password}'`;
    connection.query(sql, function (err, result) {
        res.end(JSON.stringify(result[0]))
    });
})


app.get('/listUsers/:except_id', function (req, res) {
    let data = req.body;
    
    var sql = `SELECT * FROM users where id_user != ${req.params.except_id}`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        if (result)
            res.end(JSON.stringify(result))
      
    });
})


app.post('/request', function (req, res) {
    //console.log("salam");
    let data = req.body;
    console.log(data); 
    var sql = `INSERT INTO request (me, other, status_id) VALUES ('${data.me}', '${data.other}',1)`;
    connection.query(sql, function (err, result) {
        if (err) {
            
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify({ status: "ok" }))
    });
})

app.post('/acceptRequest', function (req, res) {
    let data = req.body;
    var sql = `UPDATE request SET status_id=2 WHERE id =${data.id}`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify({ status: "Bien fait" }))
    });
})

app.post('/refuseRequest', function (req, res) {
    let data = req.body;
    var sql = `UPDATE request SET status_id=3 WHERE id =${data.id}`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify({ status: "Bien fait" }))
    });
})

app.get('/getRequest', function (req, res) {
    let data = req.body;
    var sql = `SELECT * FROM request WHERE status_id = 1 and me =${data.id}`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify(result))
    });
})


app.get('/Requestaccepte', function (req, res) {
    let data = req.body;
    var sql = `SELECT * FROM request WHERE status = 2 and me =${data.id}`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify(result))
    });
})


app.get('/getLongLati', function (req, res) {
    let data = req.body;
    var sql = `SELECT longitude, latitude FROM users`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify(result))
    });
})


app.get('/postLongLati', function (req, res) {
    let data = req.body;
    var sql = `UPDATE users SET longitude=15 and latitude=85.26 `;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify(result))
    });
})

app.get('/modifyPassword', function (req, res) {
    let data = req.body;
    var sql = `UPDATE users SET password= 1558`;
    connection.query(sql, function (err, result) {
        if (err) {
            res.end(JSON.stringify({ erreur: err }))
        }
        res.end(JSON.stringify(result))
    });
})



app.listen(3000, function () {
    console.log('Example app listening on port 3000!')
})