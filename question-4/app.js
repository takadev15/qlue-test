var express = require('express');
var app = express();

const jsonInput = require('./input.json');
const port = 3030;
const result = {"h":[], "d":[[]]};

result.h = Object.keys(jsonInput[0]);
result.d = jsonInput.map((obj) => {
  return Object.values(obj);
});

app
  .get('/', (req, res) => {
  res.send(result);
})
  .listen(port, () => {
  console.log(`Web server running at port ${port}`);
});

