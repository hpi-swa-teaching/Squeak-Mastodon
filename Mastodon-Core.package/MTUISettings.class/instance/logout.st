actions
logout

	self clearTextFields.
	self mastodonApi isAuthenticated ifFalse: [^ self].
	MTSettingsStore reset.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	self mastodonApi reset.
	MTAccountStore resetDefaultAccount.
	
	self resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText