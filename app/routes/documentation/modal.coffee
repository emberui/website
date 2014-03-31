`import modal from 'emberui/components/eui-modal'`
`import modalContentView from '../../views/documentation/modal-example'`

route = Ember.Route.extend
  actions:
    showModal: ->
      modal.show
        targetObject: @
        contentViewClass: modalContentView
        content: { name: "Jaco", message: "This style is best for quick promts from the user." }

    showFullModal: ->
      modal.show
        targetObject: @
        contentViewClass: modalContentView
        content: { name: "Jaco", message: "This is a great style for more involved modals." }
        style: 'full'

`export default route`
