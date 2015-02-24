# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, span} = React.DOM


Info = React.createClass


  render: ->
    div {},

      div 
        className: 'row short'
        style:
          padding: '1em'

        p
          className: 'point'
          'LM Labs is a community of engineers, designers and makers at the Chandler Local Motors facility. We have a wide assortment of industrial tools and resources that anyone can come in to use. '

        div
          className: 'break'

        p
          className: 'point'
          'Read more about..'

        span
          style:
            'font-weight': 'bold'
          p
            className: 'point hilight'
            '\u2022 who we are'

        span
          style:
            'font-weight': 'bold'
          p
            className: 'point hilight'
            '\u2022 the facility'
        
        span
          style:
            'font-weight': 'bold'
          p
            className: 'point hilight'
            '\u2022 how to get involved'


module.exports = Info