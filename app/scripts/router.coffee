App.Router.reopen
	location: 'history'


App.Router.map ->

	# Index Routes
	@resource('index', {path: '/'}, ->
		@route('unknown', { path: '/*path'})
	)

	@resource('genre', { path: '/:genre' })
	@resource('option', { path: '/:genre/:option' })


App.IndexRoute = Em.Route.extend
	enter: ->
		App.Terms.getTerms()


App.IndexUnknownRoute = Em.Route.extend
	redirect: ->
		@router.transitionTo('index')


App.GenreRoute = Em.Route.extend
	serialize: (params) ->
		console.log params


App.OptionRoute = Em.Route.extend
	serialize: (params) ->
		console.log params