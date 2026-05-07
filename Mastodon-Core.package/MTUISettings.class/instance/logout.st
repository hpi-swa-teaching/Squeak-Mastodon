actions
logout
	self clearTextFields.
	self mastodonApi isAuthenticated ifFalse: [^false].
	MTSettingsStore reset.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	self mastodonApi reset.
	"self addResultSection."
	resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText