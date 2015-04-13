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
        cursor:         'pointer'

      name


subHeaderItem = (content) ->

  p
    className: 'hours'
    style:
      marginLeft: '2em'
      display:    'inline-block'
    
    content

column = (item0, title0, item1) ->

  div
    style:
      display: 'inline-block'
      marginLeft: '2em'

    p
      className: 'hours' + title0
      style:
        display: 'table'

      item0

    p
      className: 'hours'
      style:
        display: 'table'

      item1


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

          headerItem 'Events',        811

          headerItem 'Message Board', 1451

          headerItem 'About',         2182

          headerItem 'Location',      3413

          headerItem 'Tools',         4191


      div
        style:
          display:         ' table'
          verticalAlign:   'top'
          backgroundColor: '#ffffff'
          width:           '100%'

        column 'Hours', ' title', @props.sun

        column @props.mon, '', @props.tue

        column @props.wed, '', @props.thu

        column @props.fri, '', @props.sat

        column 'Contact', ' title', @props.contact
        


module.exports = Header