actions
logout
	self clearTextFields.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	MTSettingsStore reset.
	self mastodonApi reset.
	resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText