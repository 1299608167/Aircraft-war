const express = require('express');
const app = express();
const path = require('path');

app.use(express.static('public'));

app.get('/', function (req, res) {
    res.sendFile(path.join(__dirname, 'public', 'index.html'));
});

const port = process.env.PORT || 3000;
app.listen(port, function () {
    console.log(`Server listening on port ${port}`);
});