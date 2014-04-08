controller = Ember.ObjectController.extend
  isDemoActive: true
  isSignupActive: true
  emailAddress: null

  isInvalidEmail: Ember.computed.empty('emailAddress')

  loginButtonStyle: (->
    return 'default' if @get('isInvalidEmail')
    return 'primary'
  ).property 'emailAddress'

  signup: ->
    @set('isSignupActive', true)


`export default controller`
