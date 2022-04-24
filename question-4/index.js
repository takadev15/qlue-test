var express = require('express');
var app = express();
var fs = require("fs");

const jsonInput = require('./input.json');
const port = 3030;

for(var i = 0; i < jsonInput.length; i++) {
  var obj = jsonInput[i]
  console.log(obj.username)
}

app.get('/', (req, res) => {
  res.send(jsonInput);
});

app.listen(port, () => {
  console.log(`Web server running at port ${port}`);
});
