# Libraries
React = require 'react'  
Parse = require('parse').Parse 
_     = require 'lodash'


# Stores
labStore  = require './../lab.store'
userStore = require './../user.store'


# DOM Elements
{p, div, input} = React.DOM


ToolsClass = React.createClass


  getInitialState: ->
    tools: @props.tools


  addToolHandle: (event) ->
    categoryIndex = event.target.getAttribute 'data-category-index'
    @state.tools[ categoryIndex ].push ''
    @setState tools: @state.tools


  removeCategory: (event) ->
    categoryIndex = event.target.getAttribute 'data-category-index'
    @state.tools.splice categoryIndex, 1
    @setState tools: @state.tools


  removeTool: (event) ->
    categoryIndex = event.target.getAttribute 'data-category-index'
    toolIndex     = event.target.getAttribute 'data-tool-index'
    @state.tools[categoryIndex].splice toolIndex, 1
    @setState tools: @state.tools


  toolChangeHandle: (event) ->
    categoryIndex = event.target.getAttribute 'data-category-index'
    toolIndex     = event.target.getAttribute 'data-tool-index'
    @state.tools[ categoryIndex ][ toolIndex ] = event.target.value
    @setState tools: @state.tools


  categoryChangehandle: (event) ->
    categoryIndex = event.target.getAttribute 'data-category-index'
    @state.tools[ categoryIndex ][ 0 ] = event.target.value
    @setState tools: @state.tools


  addCategoryHandle: (event) ->
    @state.tools.push ['', '']
    @setState tools: @state.tools


  handleSave: ->
    context = @
    usersId = Parse.User.current().id

    userStore.getById usersId, (user) =>
      labId = user.attributes.lab.id

      lab =
        tools: context.state.tools

      labStore.updateById labId, lab, ->  


  render: ->


    div
      style:
        marginLeft:'4em'

      p
        className: 'events'
        'Tools'

      _.map @state.tools, (toolCategory, categoryIndex) =>

        div {},

          input
            className:              'input listItem'
            placeholder:            'tool category'
            'data-category-index':  categoryIndex
            value:                  toolCategory[0]
            onChange:               @categoryChangehandle
            style:
              display: 'inline-block'
              marginBottom: '1em'
              marginRight: '1em'

          input
            className:              'submit'
            type:                   'submit'
            value:                  'add tool'
            'data-category-index':  categoryIndex
            onClick:                @addToolHandle
            style:
              display:              'inline-block'
              marginRight:          '1em'

          input
            className:              'submit'
            type:                   'submit'
            value:                  'delete category'
            'data-category-index':  categoryIndex
            onClick:                @removeCategory
            style:
              display:              'inline-block'
              marginRight:          '1em'


          _.map (toolCategory.slice 1), (tool, toolIndex) =>

            div
              style:
                display: 'table'
                width: '100%'

              div
                style:
                  display:  'inline-block'
                  width:    'auto'

                input
                  className:              'input listItem'
                  placeholder:            'tool'
                  value:                  tool
                  'data-category-index':  categoryIndex
                  'data-tool-index':      toolIndex + 1
                  onChange:               @toolChangeHandle
                  style:
                    marginRight: '1em'

              div
                style:
                  display: 'inline-block'

                input
                  className:              'submit'
                  type:                   'submit'
                  value:                  'delete'
                  'data-category-index':  categoryIndex
                  'data-tool-index':      toolIndex + 1
                  onClick:                @removeTool
                  style:
                    display:      'inline-block'
                    marginRight:  '1em'

          div
            className: 'break'

      div {},

        input
          className:     'submit'
          type:          'submit'
          value:         'save'
          onClick:       @handleSave
          style:
            display:     'inline-block'
            marginRight: '1em'

        input
          className:     'submit'
          type:          'submit'
          value:         'add category'
          onClick:       @addCategoryHandle
          style:
            display:     'inline-block'
            marginRight: '1em'

      div
        className: 'break'
          

module.exports = ToolsClass