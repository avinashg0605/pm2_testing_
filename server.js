const http = require('http');

http.createServer((req, res) => {
  res.end('Hello from Node.js 👋\n');
}).listen(8000, () => {
  console.log('App running on port 8000');
});