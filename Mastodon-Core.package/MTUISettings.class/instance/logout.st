actions
logout

	self clearTextFields.
	self mastodonApi hasToken ifFalse: [^false].
	MTSettingsStore reset.
	self mastodonApi reset.
	resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText