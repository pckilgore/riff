const express = require('express')

const app = express()

// Keeping it simple to start.
app.get('/', (req, res) => res.send('Hello world'))

app.listen(3000, () => console.log("listening on port 3000"))
