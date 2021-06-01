const express = require('express');
const path = require('path');
const mysql = require('mysql')
const app = express();
const bodyparser = require('body-parser');
// const cors = require('cors');
// app.use(cors)
const pool = mysql.createPool({
    connectionLimit: 100,
    host: 'localhost',
    user: "root",
    password: "",
    database: 'DeWalt'
});

app.set('port', (process.env.PORT || 5000));

app.use(bodyparser.json());
app.use(bodyparser.urlencoded({ extended: true }));

app.use('/api/uploads', express.static('uploads'))
app.use('/api/uploads/images', express.static('uploads/images'))
app.use('/api/uploads/videos', express.static('uploads/videos'))
app.get('/api/products', (req, res) => {

    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log('connected as Id', +connection.threadId)
        connection.query(`select p.id , p.productName , p.productPrice, p.productDesc , p.productImage , p.productVideo , c.name as Category from Products as p
        INNER JOIN Category as c ON p.categoryId = c.cid;
        ;`, (err, rows) => {
            connection.release();
            if (err) {
                console.log(err)
                return
            }
            res.send(rows)
        })
    })
})

app.get('/api/category/:id/products', (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log('connected as Id', +connection.threadId)
        connection.query(`select * from Products where categoryId = ${req.params.id};`, (err, rows) => {
            connection.release();
            if (err) {
                console.log(err)
                return
            }
            res.send(rows)
        })
    })
})
app.get('/api/products/:id', (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log('connected as Id', +connection.threadId)
        connection.query(`
        select p.id , p.productName , p.productPrice, p.productDesc , p.productImage , p.productVideo , c.name as Category from Products as p
        INNER JOIN Category as c ON p.categoryId = c.cid
        where p.id = ${req.params.id};
        `, (err, rows) => {
            connection.release();
            if (err) {
                console.log(err)
                return
            }
            res.send(rows)
        })
    })
})
app.get('/api/categories', (req, res) => {
    pool.getConnection((err, connection) => {
        if (err) throw err;
        console.log('connected as Id', +connection.threadId)
        connection.query(`select * from Category`, (err, row) => {
            connection.release();
            if (err) {
                console.log(err)
                return
            }

            console.log(row)
            res.send(row)
        })

    })

})


app.listen(app.get('port'), () => {
    console.log("server started on port " + app.get('port'))
})