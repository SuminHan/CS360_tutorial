// CS360 project#2 tutorial
// author: smhan@dbserver.kaist.ac.kr

var mysql = require('mysql'); // MySQL module on node.js

var connection = mysql.createConnection({
    host     : 'localhost',
    port     : 3000,
    user     : 'brogrammers',
    password : '1234',
    database : 'brogrammers_db_',
});

connection.connect(); // Connection to MySQL

var express = require('express');
var app = express();

var bodyParser = require('body-parser')
app.use('/', express.static(__dirname + '/public')); // you may put public js, css, html files if you want...
app.use( bodyParser.json() );       // to support JSON-encoded bodies
app.use(bodyParser.urlencoded({     // to support URL-encoded bodies
  extended: true
})); 

// "node app.js" running on port 3000
app.listen(3000, function () {
	console.log('Example app listening on port 3000!');
});

// base url action: "http://localhost/" -> send "index.html" file.
app.get('/', function (req, res) {
	res.sendFile(__dirname + "/index.html");
});

// post action from index.html: '<form action="/insertAPI" method="POST">' brought here
app.post('/insertAPI', function (req, res) {
	console.log(req.body); // log to the node.js server

	queryStr = 'INSERT INTO user_tbl (first_name, last_name, gender) VALUES ("'
					+ req.body.first_name + '","'
					+ req.body.last_name + '","'
					+ req.body.gender + '");';

	console.log("Insert query: " + queryStr); // you may check the queryStr

	connection.query(queryStr, function (err, rows) { // send query to MySQL
		if (err) throw err;
		console.log(rows); // log to check MySQL insertion result
		res.redirect('/'); // after submission, redirect to the base url
	})
});

// get action to give raw data for user_tbl: "http://localhost/listAPI"
app.get('/listAPI', function (req, res) {
	connection.query('select * from user_tbl', function (err, rows) {
		if (err) throw err;
		res.send(rows);
	})
});

// prettify the listAPI data, refer to "result.html"
app.get('/listPretty', function (req, res) {
	res.sendFile(__dirname + "/result.html");
});
