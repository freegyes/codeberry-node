'use strict';

const express = require('express');

// Constants
const PORT = 3000;

// App
const app = express();

app.use('/', express.static('/static'));

app.listen(PORT);

console.log('Running on http://localhost:' + PORT);