const express = require('express');
const app = express();

// Set port to 80 for AWS Load Balancer, allow override via environment variable
const port = process.env.PORT || 80;

app.get('/health', (req, res) => res.send('OK'));
app.get('/', (req, res) => res.send('Backend is running!'));

// Start server
app.listen(port, () => console.log(`Backend listening on port ${port}`));

