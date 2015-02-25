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
        backgroundColor: '#ffffff'
        width: '100%'
        height: '800px'

      p
        className: 'point'
        'Tools'

      toolSection '3D Printing', 
        [
          'MakerBot Replicator 2'
          'MakerBot Replicator Z18'
          'SeeMeCNC Rostock'
        ]

      toolSection 'CNC',
        [
          'Press Brake'
          'Lathe'
          '5 Axis Mill'
          '3 Axis Mill'
          'Laser Cutter'
        ]

      toolSection 'Welding',
        [
          'TIG Welders'
          'MIG Welders'
          'Spot Welders'
        ]

      toolSection 'Metalshop',
        [
          'Planishing Hammer'
          'Rotatary Sander'
          'Grinder'
          'English Wheel'
          'Tube Bender'
          'Shear'
          'Bandsaw'
        ]

      toolSection 'Woodshop',
        [
          'Hitachi Miter Saw'
          'Skil Scroll Saw'
          'Bandsaw'
        ]

      toolSection 'Automotive',
        [
          '2 Post Lift'
          'Under Hoist Safety Stand'
          'Engine Hoist'
          'Engine Stand'
          'Telescoping Transmission Jack'
          'Parts Washer'
          'Tire Machine'
        ]

      toolSection 'Design',
        [
          'Solid Edge'
          'Solid Works'
          'OpenSCAD'
          'MakerWare'
          'Replicator G'
        ]

      toolSection 'Electrical',
        [
          'Oscilliscopes'
          'Soldering Irons'
          'Multimeters'
          'Power Supply'
          'Raspberry Pi'
        ]

      toolSection 'Misc',
        [
          'Sand Blasting'
          'Powder Coating'
          'Ultra Sonic Washer'
        ]



module.exports = Tools