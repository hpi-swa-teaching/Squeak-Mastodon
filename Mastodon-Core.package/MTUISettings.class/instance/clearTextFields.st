render
clearTextFields
	tokenTextField theText: ''.
	urlTextField theText: ''.
	providerTextField ifNotNil: [
		providerTextField theText: (MTSettingsStore default at: #provider ifAbsent: [#mastodon]) asString]