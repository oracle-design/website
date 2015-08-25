# *************************************
#
#   application.js
#
#
# *************************************
#= require _plugins
#= require _app-base

class OddDesign.CanvasController
  constructor: ->
    @canvas = $('[data-behavior="canvas"]')
    @membersBtn = $('[data-behavior="to-members"]')
    @worksBtn = $('[data-behavior="to-works"]')
    @contactBtn = $('[data-behavior="to-contact"]')
    @socialBtn = $('[data-behavior="to-social"]')
    @closeBtn = @canvas.find('[data-behavior="close-btn"]')
    @setEvent()

  setEvent: ->
    @closeBtn. on 'click', @resetPosition
    @contactBtn.on 'click', @moveToContact
    @worksBtn.on 'click', @moveToWorks
    @membersBtn.on 'click', @moveToMember
    @socialBtn.on 'click', @moveToSocial

  moveToMember: =>
    @resetPosition(@canvas)
    @canvas.addClass 'top'

  moveToWorks: =>
    @resetPosition(@canvas)
    @canvas.addClass 'right'

  moveToContact: =>
    @resetPosition(@canvas)
    @canvas.addClass 'bottom'

  moveToSocial: =>
    @resetPosition(@canvas)
    @canvas.addClass 'left'

  resetPosition: =>
    @canvas.removeClass 'top right bottom left'
