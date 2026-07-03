actions
applyProviderSelection

	| providerKey current |
	providerTextField ifNil: [^ false].
	providerKey := providerTextField theText asString withBlanksTrimmed asLowercase.
	providerKey isEmpty ifTrue: [providerKey := 'mastodon'].
	(#('mastodon' 'bluesky') includes: providerKey) ifFalse: [
		resultTextLabel contents: '<i>Unknown provider. Use mastodon or bluesky.</i>' asHtmlText.
		^ false].
	MTSettingsStore default at: #provider put: providerKey asSymbol.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	
	current := urlTextField theText asString withBlanksTrimmed.
	(current isEmpty or: [current = 'https://']) ifTrue: [
		urlTextField theText: (providerKey = 'bluesky'
			ifTrue: ['']
			ifFalse: ['https://'])].
	
	providerKey = 'bluesky'
		ifTrue: [
			urlTextField helpText: 'Bluesky Handle (e.g. alice.bsky.social)'.
			tokenTextField helpText: 'App Password']
		ifFalse: [
			urlTextField helpText: 'Server URL (with https://)'.
			tokenTextField helpText: 'OAuth code or access token'].
	
	resultTextLabel contents: ('<i>Provider set to ', providerKey, '.</i>') asHtmlText.
	^ true