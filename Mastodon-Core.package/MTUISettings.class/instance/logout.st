as yet unclassified
logout
	self clearTextFields.
	self mastodonApi isAuthenticated
		ifFalse: [ 
			self inform: 'Please login first.'.
			^ false ].
	MTSettingsStore reset.
	self mastodonApi reset.
	"self addResultSection."
	resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText