var http = require('http');
var fs = require('fs');
var uppercase = require('upper-case');

http.createServer(function (req, res) {
  fs.readFile('assets/demofile.html', function(err, data) {
    res.writeHead(200, {'Content-Type': 'text/html'});
    res.write(data);
    res.write(uppercase.upperCase("estic provant el package upper-case"))
    return res.end();
  });
}).listen(80);