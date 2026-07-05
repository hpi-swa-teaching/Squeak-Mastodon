render
clearTextFields

	self tokenTextField theText: ''.
	self urlTextField theText: ''.
	self providerTextField ifNotNil: [
		self providerTextField theText: (MTSettingsStore default
			at: #provider
			ifAbsent: [#mastodon]) asString]