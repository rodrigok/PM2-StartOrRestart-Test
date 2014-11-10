var http = require('http');

console.log(process.env.PM2_TEST_ENV);

http.createServer().listen(8000);