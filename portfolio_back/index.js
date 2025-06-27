require('dotenv').config({path: './acc.env'});

const express = require('express');
const nodemailer = require('nodemailer');
const cors = require("cors");



const app = express();
app.use(express.json());
app.use(cors());
const PORT = process.env.PORT || 3000;

app.listen(PORT, () => {
    console.log(`The server is runningg at PORT ${PORT}`);
});

const transporter = nodemailer.createTransport({
    service: "gmail",
    auth: {
        user: process.env.EMAIL_USER,
        pass: process.env.EMAIL_APP_PASSWORD,
    }
})

app.post('/contact', async (req, res) => {
    const {name, email, message} = req.body;

    const mailOptions = {
        from: email,
        to: process.env.EMAIL_USER,
        subject: `New Email from ${name}`,
        text: `name: ${name}
email: ${email}
message: ${message}`,
    }

    try
    {
        await transporter.sendMail(mailOptions);
        res.status(200).send('Message sent successfully');
    }
    catch(err) {
        console.log(err);
        res.status(500).send('There is an error');
    }
});

const fs = require("fs");
const path = require("path");

app.get('/projects', (req, res) => {
    const filepath = path.join(__dirname, 'data', 'projects.json');
    fs.readFile(filepath, 'utf-8', (err, data) => {
        if (err)
        {
            console.error(err);
            return res.status(500).json({error: 'Unable to Load File'});
        }
        else
        {
            return res.status(200).json(JSON.parse(data));;
        }
    });
});