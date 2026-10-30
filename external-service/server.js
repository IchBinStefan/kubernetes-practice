import * as http from "node:http"

const ADDRESS = '0.0.0.0'
const PORT = 3000
const MESSAGE = 'Hello from outside K8s'

const server = http.createServer((_, res) => {
  res.writeHead(200, { 'Content-Type': 'application/json'})
  res.end(JSON.stringify({ message: MESSAGE }))
})
server.listen(PORT, ADDRESS, () => { console.log(`Server listening on port ${PORT}...`) })
