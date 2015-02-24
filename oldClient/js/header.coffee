# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{p, div, input, img, ul, li, span, iframe} = React.DOM


Header = React.createClass


  render: ->
    div {},

      div 
        className: 'row header'
        #display: 'inline'
        #clear: 'both'

        img
          className: 'centered'
          top: '1em'
          height: '150px'
          width: 'auto'
          src: './LMLabs.png'
          style:
            'margin-right': '4em'
            'margin-top': '1em'
            float: 'left'
            display: 'inline-block'
            #'horizontal-align': 'center'


        div
          style:
            #'margin-left': '4em'
            'margin-right': '4em'
            #float: 'left'
            float: 'top'
            position: 'relative'
            left: '0px'
            top: '0em'
            display: 'inline-block'
            'vertical-align': 'top'

          p
            className: 'header'
            'Hours'
          ul
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Sun : Closed'
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Mon : Closed'
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Tue : 12pm - 8pm'
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Wed : 12pm - 8pm'
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Thu : 12pm - 8pm'
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Fri : 12pm - 8pm'
            li
              span
                style:
                  'font-weight': 'bold'
                p 
                  className: 'point hilight'
                  'Sat : 10am - 4pm'

        div
          style:
            #'margin-left': '4em'
            #'margin-right': '4em'
            #float: 'right'
            float:'top'
            position: 'relative'
            left: '0px'
            top: '0em'
            display: 'inline-block'
            'vertical-align': 'top'
          p
            className: 'header'
            'Location'
          ul
            li
              iframe
                src: 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3335.598768576878!2d-111.96211399999999!3d33.27699499999999!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x872b03e42ea3b87d%3A0xceee59f30419017d!2sLocal+Motors!5e0!3m2!1sen!2sus!4v1424711829616'
                style:
                  width: '300px'
                  height: '165px'
                  border: '0px'

              #<iframe src="" width="600" height="450" frameborder="0" style="border:0"></iframe>



module.exports = Header