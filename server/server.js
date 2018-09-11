const express = require('express')

const app = express()

const PORT = +process.env.PORT || 8080

// Keeping it simple to start.
app.get('/', (req, res) => res.send('Hello world'))

app.listen(PORT, () => console.log(`listening on port ${PORT}`))
