const express = require('express')
const app = express()
const port = 8000
const shell = require('shelljs')
let server1State = 0;
let server2State = 0;

app.set('views', __dirname + '/views')
app.set('view engine', 'ejs')
app.use(express.static('./views'));

app.get('/', (req, res) => {
  res.render('index', {data: server1State})
})

app.get('/refresh', (req, res) => {
  console.log(JSON.stringify({ server: 'server1', status: server1State}))
  res.send([{ server: 'server1', status: server1State}, {server: 'server2', status: server2State}])
})

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})

function yourFunction(){
  shell.exec('/home/debian/DockerMiddlewareLab1/pinger.sh')
  let fs  = require("fs");
  let array1 = fs.readFileSync('/home/debian/DockerMiddlewareLab1/last_server0_ping.txt').toString().split('\n');
  server1State = array1[0].split(' ')[0];
  let array2 = fs.readFileSync('/home/debian/DockerMiddlewareLab1/last_server1_ping.txt').toString().split('\n');
  server2State = array2[0].split(' ')[0];
  setTimeout(yourFunction, 2000);
}

yourFunction();

