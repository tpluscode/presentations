var express = require('express');
var app = express();

app.use(express.static('examples'));

app.listen(3000);