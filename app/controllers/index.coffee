controller = Ember.ObjectController.extend
  isDemoActive: false
  emailAddress: null

  isInvalidEmail: Ember.computed.empty('emailAddress')

  loginButtonStyle: (->
    return 'default' if @get('isInvalidEmail')
    return 'primary'
  ).property 'emailAddress'


`export default controller`
