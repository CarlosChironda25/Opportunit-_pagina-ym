const express = require('express');
const routes = require('./routes/routes');
const cors = require('cors');
const bodyParser = require('body-parser');

const app = express();


// Enable CORS for all routes
app.use(cors());

app.use(bodyParser.json());

// Apply your routes
app.use(routes);

const port = process.env.PORT || 5000;
app.listen(port, () => {
    console.log(`Server is listening on port ${port}`);
});
