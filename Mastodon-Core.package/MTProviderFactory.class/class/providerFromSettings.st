accessing
providerFromSettings

	| providerKey |
	providerKey := MTSettingsStore default at: #provider ifAbsent: [#mastodon].
	providerKey isString ifTrue: [providerKey := providerKey asLowercase asSymbol].
	^ self providerFor: providerKey