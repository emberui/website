today = moment()
tomorrow = today.add(1, 'days')
controller = Ember.ObjectController.extend
  selectedDates: [
    today,
    tomorrow
  ]

  selectedScatteredDates: [
    today.subtract(4, 'days'),
    today,
    today.add(4, 'days'),
    tomorrow.add(4, 'days')
  ]

  selectedDate: tomorrow

  maxPastDate: today

  maxFutureDate: today

  disabledDates: [
    today,
    tomorrow
  ]

`export default controller`
