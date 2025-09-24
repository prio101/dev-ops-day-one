const express = require("express");

const app = express();

const port = 9000;

app.get("/", (req, res) => {
  console.log("hello world", req);
  res.send("Hello World!");
});

app.listen(port, () => {
  console.log("hello world");
  console.log(`Example app listening on port ${port}`);
});
