# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, iframe} = React.DOM


Location = React.createClass


  render: ->
    div {},

      div
        style:
          height: '50px'

      div
        style:
          #'horizontal-align': 'center'
          'margin-left': 'auto'
          'margin-right': 'auto'
          width: '800px'

        p
          className: 'events'
          'Location'

        iframe
          src: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3335.598768576878!2d-111.96211399999999!3d33.27699499999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b03e42ea3b87d%3A0xceee59f30419017d!2sLocal+Motors!5e0!3m2!1sen!2sus!4v1424711829616'
          style:
            border:      '0px'
            width:       '800px'
            height:      '600px'
            frameborder: '0px'

      div
        style:
          height: '50px'



module.exports = Location