### How to use?

#### build the tables
    $ sudo mysql < sql/tables.sql
    $ sudo mysql < sql/users.sql
    
This will create database called <b>brogrammers_db</b> and create tables for the db while creating new user called 'brogrammers'@'localhost' with password '1234'.

Then, install the node modules:

    $ npm install

Now, run the server.

    $ node app.js
    Example app listening on port 3000!

Checkout your [http://localhost:3000/](http://localhost:3000/).

### Basic functions
* localhost:3000/: sends "index.html" which includes submit form.
* localhost:3000/listAPI: sends raw json format data from "select * from user_tbl"
* localhost:3000/listPretty: give into list using JQuery ajax. check javascript code.
