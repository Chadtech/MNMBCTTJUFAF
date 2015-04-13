# Libraries
React         = require 'react'    

# DOM Elements
{p, div, input} = React.DOM


ProjectBoardClass = React.createClass


  render: ->


    div
      style:
        marginLeft:'4em'

      p
        className: 'events'
        'Project Board'

      p
        className: 'point hilight'
        'Work in progress'

module.exports = ProjectBoardClass