const express = require('express');

const app = express();

const port = 9000;

app.get('/', (req, res)=> {

 console.log("hello world");
})


app.listen(port, () => {
	console.log(`Example app listening on port ${port}`)
})
