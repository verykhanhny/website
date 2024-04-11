// Importing required modules
const express = require('express');

// Create an Express application
const app = express();

// Define a route handler for a custom endpoint '/api/data'
app.get('/api', (req, res) => {
    const data = {
        message: 'This is some data from the server!',
        timestamp: new Date().toISOString()
    };
    res.json(data);
});

// Start the Express server
const PORT = 22222;
app.listen(PORT, () => {
    console.log(`Server is listening on port ${PORT}`);
});