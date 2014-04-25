export default DS.Model.extend({
  name: 		DS.attr('string'),
  age: 			DS.attr('number'),
  position: DS.attr('string'),
  company: 	DS.belongsTo('company')
});
