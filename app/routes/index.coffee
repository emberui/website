route = Ember.Route.extend
  # Reset the demo state
  deactivate: () ->
    controller = @get 'controller'
    controller.setProperties { isDemoActive: false, isSignupActive: false }

  actions:
    showDemo: ->
      @get('controller').set('isDemoActive', true)

`export default route`
