App.TutorsController = Ember.Controller.extend
  selectedSubject: null

  subjectChanged: ( ->
    console.log(@get('selectedSubject'))
  ).observes('selectedSubject')

  filteredTutors: Em.computed 'tutors', 'selectedSubject', ->
    return @get('tutors') unless @get('selectedSubject')
    @get('tutors').filter (tutor) ->
      tutor.subjects.contains(@get('selectedSubject'))
