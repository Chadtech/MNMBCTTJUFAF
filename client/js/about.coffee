# Libraries
React  = require 'react'


# DOM Elements
{p, div, input, img, span} = React.DOM


About = React.createClass


  render: ->
    div
      style:
        backgroundImage: 'linear-gradient(rgba(144, 144, 144, 0.9), rgba(144, 144, 144, 0.9)), url("about.jpg")'

      div 
        style:
          width: '900px'
          height: 'auto'
          display: 'table'
          overflow: 'hidden'
          marginLeft:  'auto'
          marginRight: 'auto'

        p
          className: 'about'
          style:
            marginTop: '1em'
            marginBottom: '1em'
          'LM Labs is a community of engineers, designers, and makers at the Chandler Local Motors facility. We have a wide assortment of industrial tools and resources that anyone can come in to use. '

      div 
        style:
          width: '100%'
          display: 'table'
          marginLeft: 'auto'
          marginRight: 'auto'
          overflow: 'hidden'

        img
          src: './about.jpg'
          style:
            horizontalAlign: 'middle'
            width: '100%'
            height: 'auto'
            display: 'table'

      div 
        style:
          width:        '900px'
          height:       'auto'
          display:      'table'
          marginLeft:   'auto'
          marginRight:  'auto'
          overflow:     'hidden'


        p
          className: 'about'
          style:
            marginTop: '1em'
            marginBottom: '1em'
          'Join us during our open hours and make something cool.'



module.exports = About