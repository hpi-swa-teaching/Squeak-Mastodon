helpers
refreshProvider

	self socialProvider: MTProviderFactory providerFromSettings.
	self setLabel: self socialProvider displayName.
	self refreshMenuButtons