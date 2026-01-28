const express = require('express');
const app = express();
const port = process.env.PORT || 3000;

app.get('/health', (req, res) => res.send('OK'));
app.get('/', (req, res) => res.send('Backend is running!'));

app.listen(port, () => console.log(`Backend listening on port ${port}`));

