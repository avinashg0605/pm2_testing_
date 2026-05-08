const http = require('http');

const PORT = 3000;

const server = http.createServer((req, res) => {
  res.writeHead(200, { 'Content-Type': 'text/plain' });
  res.end('PM2 + Jenkins + CodeDeploy test successful\n');
});

server.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});