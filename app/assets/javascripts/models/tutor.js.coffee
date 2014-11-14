App.Tutor = DS.Model.extend
  firstName: DS.attr("string")
  lastName: DS.attr("string")
  phone: DS.attr("string")
  email: DS.attr("string")
  rawSubjects: DS.attr("string")

  subjects: Em.computed 'rawSubjects', ->
    JSON.parse(rawSubjects)

  fullName: Em.computed 'firstName', 'lastName', ->
    "#{@get('firstName')} #{@get('lastName')}"
