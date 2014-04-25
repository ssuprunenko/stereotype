export default DS.Model.extend({
  title: 				DS.attr('string'),
  description:  DS.attr('string'),
  location: 		DS.attr('string'),
  workers: 			DS.hasMany('worker', { async: true })
});
