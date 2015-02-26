# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{a, p, div, input, img, span, iframe} = React.DOM


headerItem = (name, scrollPosition) ->

  div
    style:  
      display:      'inline-block'
      marginLeft:   '3em'
      marginBottom: '1em'

    p
      className: 'point header'
      onClick: -> window.scrollTo 0, scrollPosition
      style:
        display:        'table'
        position:       'relative'
        verticalAlign:  'top'
        marginTop:      '0.5em'

      '\u25be ' + name


subHeaderItem = (content) ->

  p
    className: 'hours'
    style:
      marginLeft: '2em'
      display:    'inline-block'
    
    content


Header = React.createClass


  render: ->
    div
      style:
        backgroundColor: '#000000'
        position:        'fixed'
        width:           '100%'
        opacity:         '0.75'

      div
        className: 'row header'

        div
          style:
            display:       'table'
            verticalAlign: 'top'

          img
            src: 'LMLabs1.png'
            style:
              height:     '64px'
              width:      'auto'
              marginLeft: '4em'


          headerItem 'Latest',        0

          headerItem 'Events',        800

          headerItem 'Project Board', 1445

          headerItem 'About',         2030

          headerItem 'Location',      2831

          headerItem 'Tools',         3471


      div
        style:
          display:         'table'
          verticalAlign:   'top'
          backgroundColor: '#ffffff'
          width:           '100%'


        subHeaderItem 'Hours'

        subHeaderItem 'Sun & Mon : Closed'

        subHeaderItem 'Tues - Fri : 12pm to 8pm'

        subHeaderItem 'Sat : 10am to 4pm'

        subHeaderItem 'Contact'

        subHeaderItem 'chandler@lmlabs.com'



module.exports = Header