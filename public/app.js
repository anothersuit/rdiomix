window.App = Ember.Application.create({
  appname: 'rdiomix',
  LOG_TRANSITIONS: true,
  LOG_BINDINGS: true
}, {
  ready: function() {
    return console.log('App Ready!');
  }
});

App.Terms = Em.Object.create({
  terms: Em.A(),
  getTerms: function() {
    $.ajax({
      type: 'GET',
      url: 'http://developer.echonest.com/api/v4/artist/top_terms?api_key=YDGY2DILQEFXQRCUY&format=json&results=100',
      context: this,
      success: function(response) {
        return console.log(response);
      }
    });
    return false;
  }
});

App.Router.reopen({
  location: 'history'
});

App.Router.map(function() {
  this.resource('index', {
    path: '/'
  }, function() {
    return this.route('unknown', {
      path: '/*path'
    });
  });
  this.resource('genre', {
    path: '/:genre'
  });
  return this.resource('option', {
    path: '/:genre/:option'
  });
});

App.IndexRoute = Em.Route.extend({
  enter: function() {
    return App.Terms.getTerms();
  }
});

App.IndexUnknownRoute = Em.Route.extend({
  redirect: function() {
    return this.router.transitionTo('index');
  }
});

App.GenreRoute = Em.Route.extend({
  serialize: function(params) {
    return console.log(params);
  }
});

App.OptionRoute = Em.Route.extend({
  serialize: function(params) {
    return console.log(params);
  }
});
