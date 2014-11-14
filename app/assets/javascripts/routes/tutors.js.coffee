App.TutorsRoute = Ember.Route.extend

  model: ->
    Em.RSVP.hash
      subjects: @store.find('subject')
      tutors:  @store.find('tutor')

  setupController: (controller, models) ->
    @_super(controller, models)
    controller.set('subjects', models.subjects)
    controller.set('tutors', models.tutors)
