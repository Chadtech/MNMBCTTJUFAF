# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, img, span} = React.DOM


Info = React.createClass


  render: ->
    div
      style:
        'background-color': '#000000'

      div 
        style:
          width: '900px'
          height: '200px'
          display: 'table'
          'margin-left': 'auto'
          'margin-right': 'auto'
          overflow: 'hidden'

        div 
          style:
            height:'100px'

        p
          className: 'about'
          'LM Labs is a community of engineers, designers, and makers at the Chandler Local Motors facility. We have a wide assortment of industrial tools and resources that anyone can come in to use. '

        div 
          style:
            height:'50px'

      div 
        style:
          width: '100%'
          height: '600px'
          display: 'table'
          'margin-left': 'auto'
          'margin-right': 'auto'
          overflow: 'hidden'

        img
          src: './about.jpg'
          style:
            'horizontal-align': 'middle'
            width: '100%'
            height: 'auto'
            display: 'table'

      div 
        style:
          width: '900px'
          height: '100px'
          display: 'table'
          'margin-left': 'auto'
          'margin-right': 'auto'
          overflow: 'hidden'


        p
          className: 'about'
          'Join us during our open hours and make something cool.'

        div 
          style:
            height:'100px'



module.exports = Info