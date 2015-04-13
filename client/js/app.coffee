# Libraries
React         = require 'react'    
Router        = require 'react-router'
Route         = Router.Route
DefaultRoute  = Router.DefaultRoute
RouteHandler  = Router.RouteHandler
Parse         = require('parse').Parse

# Initialize Parse
Parse.initialize "9mCl38L0CLSNnYzrc7EEUf8GmWleFNvCFzO0xGt9", "XAvMqgZEU9OLYj13oapjPrI9NNBa5qtnWAWb55Dr"


# Pages
Landing = require './landing'
Login   = require './login'
Admin   = require './admin'
Index   = require './index'


# DOM Elements
{p, div, input} = React.DOM


App = React.createClass
  render: ->
    RouteHandler()


Routes =
  Route
    name:    'app'
    path:    '/'
    handler: App

    DefaultRoute
      handler: Landing

    Route
      name: 'lab'
      path: 'lab/:labName'
      handler: Index

    Route
      name: 'login'
      path: '/login'
      handler: Login

    Route
      name: 'admin'
      path: '/admin'
      handler: Admin


Router.run Routes, (Handler) ->
  React.render Handler(), (document.getElementById 'content')