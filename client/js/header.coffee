# Libraries
React  = require 'react'
_      = require 'lodash'
$      = require 'jquery'

# DOM Elements
{a, p, div, input, img, span, iframe} = React.DOM


Header = React.createClass


  render: ->
    div
      style:
        'background-color': '#000000'
        position: 'fixed'
        width: '100%'

      div
        className: 'row header'

        div
          style:
            display: 'table'
            'vertical-align': 'top'

          img
            src: 'LMLabs1.png'
            style:
              height: '127px'
              width: 'auto'
              'margin-left': '4em'
          div
            style:
              display: 'inline-block'
              'vertical-align': 'top'
              'margin-left': '4em'

            p
              className: 'point header'
              style:
                display: 'table'
                position: 'relative'
                'vertical-align':'top'
                'margin-top': '0.5em'

              onClick: -> window.scrollTo 0, 0

              '\u25BE Latest'

            p
              className: 'point header'
              style:
                display: 'table'
                position: 'relative'
                'vertical-align':'top'
                'margin-top': '0.5em'

              onClick: -> window.scrollTo 0, 800

              '\u25BE Events'

          div
            style:
              display: 'inline-block'
              'vertical-align': 'top'
              'margin-left': '4em'

            p
              className: 'point header'
              style:
                display: 'table'
                position: 'relative'
                'vertical-align':'top'
                'margin-top': '0.5em'

              onClick: -> window.scrollTo 0, 1500

              '\u25BE Project Board'

            p
              className: 'point header'
              style:
                display: 'table'
                position: 'relative'
                'vertical-align':'top'
                'margin-top': '0.5em'

              onClick: -> window.scrollTo 0, 2200

              '\u25BE About'

          div
            style:
              display: 'inline-block'
              'vertical-align': 'top'
              'margin-left': '4em'

            p
              className: 'point header'
              style:
                display: 'table'
                position: 'relative'
                'vertical-align':'top'
                'margin-top': '0.5em'

              onClick: -> window.scrollTo 0, 3200

              '\u25BE Location'

            p
              className: 'point header'
              style:
                display: 'table'
                position: 'relative'
                'vertical-align':'top'
                'margin-top': '0.5em'
              '\u25BE Tools'


          div
            style:
              display: 'inline-block'
              'vertical-align': 'top'
              'margin-left': '4em'

      div
        style:
          display: 'table'
          'vertical-align': 'top'
          'background-color': '#ffffff'
          width: '100%'

        p
          className: 'hours'
          style:
            'margin-left': '2em'
            display: 'inline-block'
          'Hours'

        p
          className: 'hours'
          style:
            'margin-left': '2em'
            display: 'inline-block'
          'Sun & Mon : Closed'

        p
          className: 'hours'
          style:
            'margin-left': '2em'
            display: 'inline-block'
          'Tues - Fri : 12pm to 8pm'

        p
          className: 'hours'
          style:
            'margin-left': '2em'
            display: 'inline-block'
          'Sat : 10am to 8pm'

        p
          className: 'hours'
          style:
            'margin-left': '2em'
            display: 'inline-block'
          'Contact'

        p
          className: 'hours'
          style:
            'margin-left': '2em'
            display: 'inline-block'
          'chandler@lmlabs.com'


module.exports = Header