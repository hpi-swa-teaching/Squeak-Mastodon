actions
logout

	self clearTextFields.
	self mastodonApi hasToken ifFalse: [
		self inform: 'Please dont leave us. You havent even logged in yet.'.
		^ false].
	
	MTMastodonApi removeInstance.
	resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText