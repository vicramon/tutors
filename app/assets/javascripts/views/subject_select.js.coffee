App.SubjectSelectView = Ember.Select.extend
  contentBinding: 'controller.subjects'
  optionValuePath: 'content.name'
  optionLabelPath: 'content.name'
  prompt: 'Select a subject'
  valueBinding: 'controller.selectedSubject'
