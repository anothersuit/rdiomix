window.App = Ember.Application.create({
		appname: 'rdiomix'
		LOG_TRANSITIONS: true
		LOG_BINDINGS: true
	}
	
	ready: ->
		console.log 'App Ready!'
)

# App.Environment = document.location.origin+'/public/'