actions
logout

	self clearTextFields.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	MTSettingsStore reset.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	self mastodonApi reset.
	MTAccountStore resetDefaultAccount.
	MTUIWindow instance loadSettingsView
	"self addResultSection.
	resultTextLabel contents: '<i>Successfully logged out</i>' asHtmlText"