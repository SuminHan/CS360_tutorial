# CS360 Tutorial Server

Author: smhan@dbserver.kaist.ac.kr

This is a prototype code for new starters who will build their application based on

* [Node.js](https://nodejs.org/) + [Express.js](https://expressjs.com/)
* [MySQL](https://dev.mysql.com/downloads/) community version
* (optional) [JQuery](https://jquery.com/)

### How to use?

First run the <b>run_on_my.sql</b> on mysql manually, or simply by

`$ sudo mysql < run_on_my.sql`

This will create database called <b>cs360_tutorial</b> and create table called <b>user_tbl</b> while creating new user called 'tester'@'localhost' with password '1234'.

Then, install the node modules:

    $ npm install

Now, run the server.

    $ node app.js
    Example app listening on port 3000!

Checkout your [http://localhost:3000/](http://localhost:3000/).

### Basic functions
* localhost:3000/: sends "index.html" which includes submit form.
* localhost:3000/listAPI: sends raw json format data from "select * from user_tbl"
* localhost:3000/listPretty: give into list using JQquery ajax. check javascript code.
