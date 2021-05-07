const express = require('express');
const app = express();
const mysql = require('mysql');
const cors = require('cors');

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    user: "root",
    host: "localhost",
    password: "password",
    database: "nustudent"
})

app.post('/create', (req, res) => {
    const id = req.body.id;
    const name = req.body.name;
    const housing = req.body.housing;
    const state = req.body.state;
    const major = req.body.major;
    const dining = req.body.dining;
    const club = req.body.club;
    const gym = req.body.gym;
    const covidDate = req.body.covidDate;
    const contact = req.body.contact;

    db.query('INSERT INTO student (nuid, studentname, housing, state, major, dining, club, gym, covidDate, contact) VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?)',
    [id, name, housing, state, major, dining, club, gym, covidDate, contact], (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send("Value inserted")
        }
    })
})

app.get("/student", (req, res) => {
    db.query("SELECT * FROM student", (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
});

app.put("/update", (req, res) => {
    const id = req.body.id;
    const dining = req.body.dining;
    const club = req.body.club;
    const gym = req.body.gym;
    const contact = req.body.contact;
    db.query("UPDATE student SET dining = ?, club = ?, gym = ?, contact = ? WHERE nuid = ?", 
    [dining, club, gym, contact, id], (err, result) => {
        if (err) {
            console.log(err)
        } else {
            res.send("Value inserted")
        }
    });
});

app.delete("/delete/:id", (req, res) => {
    const id = req.params.id;
    db.query("DELETE FROM student WHERE nuid = ?", id, (err, result) => {
      if (err) {
        console.log(err);
      } else {
        res.send(result);
      }
    });
});

app.get("/getState", (req, res) => {
    db.query("SELECT * FROM homestate", (err, result) => {
        if (err) {
            console.log(err);
        } else {
            res.send(result);
        }
    });
});

app.listen(3001, () => {
    console.log("yay, your server is running");
})