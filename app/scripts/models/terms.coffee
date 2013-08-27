App.Terms = Em.Object.create

	terms: Em.A()

	getTerms: ->
		
		# Check Cache



		$.ajax
			type: 'GET'
			url: 'http://developer.echonest.com/api/v4/artist/top_terms?api_key=YDGY2DILQEFXQRCUY&format=json&results=100'
			context: @
			success: (response) ->

				console.log response


		false