accessing
providerFromSettings
	| providerKey provider |
	providerKey := MTSettingsStore default at: #provider ifAbsent: [#mastodon].
	providerKey isString ifTrue: [providerKey := providerKey asLowercase asSymbol].
	provider := self providerFor: providerKey.
	^ provider