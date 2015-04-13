# Libraries
React  = require 'react'


# DOM Elements
{p, div } = React.DOM


toolSection = (category, tools) ->
    div
      style:
        float: 'left'
        marginLeft: '4em'
        marginBottom: '1em'
        width: '200px'

      p
        className: 'toolCategory'
        category

      for tool in tools
        p
          className: 'tool'
          tool



Tools = React.createClass


  render: ->
    div 
      style:
        marginTop: 131
        backgroundColor: '#ffffff'
        width: '100%'
        height: '800px'

      p
        className: 'point'
        'Tools'

      for category in @props.tools

        toolSection category[0], (category.slice 1)


module.exports = Tools