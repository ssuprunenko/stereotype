var Router = Ember.Router.extend({
  // Uncomment to change Ember's router to use the
  // HTML5 History API
  // Please note that not all browsers support this!
  // You will also need to uncomment the greedy route matcher
  // in config/routes.rb

  location: 'auto'
});

Router.map(function() {
	this.resource('companies');
	this.resource('workers');
});

export default Router;
