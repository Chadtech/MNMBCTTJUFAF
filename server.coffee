fs          = require 'fs'
express     = require 'express'
app         = express()
http        = require 'http'
{join}      = require 'path'
bodyParser  = require 'body-parser'
_           = require 'lodash'


app.use bodyParser.json()

PORT = Number process.env.PORT or 1101

app.use express.static join __dirname, 'public'

app.get '/', (request, response, next) ->
  indexPage = join __dirname, 'public/index.html'
  response.status 200
    .sendFile indexPage

httpServer = http.createServer app

httpServer.listen PORT, ->
  console.log 'SERVER RUNNING ON ' + PORT