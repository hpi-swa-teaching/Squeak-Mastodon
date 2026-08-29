actions
applyProviderSelection

	| providerKey current |
	self providerTextField ifNil: [^ false].
	providerKey := self providerTextField theText asString withBlanksTrimmed asLowercase.
	providerKey isEmpty ifTrue: [providerKey := 'mastodon'].
	(#('mastodon' 'bluesky') includes: providerKey) ifFalse: [
		self resultTextLabel contents: '<i>Unknown provider. Use mastodon or bluesky.</i>' asHtmlText.
		^ false].
	MTSettingsStore default at: #provider put: providerKey asSymbol.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	
	current := self urlTextField theText asString withBlanksTrimmed.
	(current isEmpty or: [current = 'https://']) ifTrue: [
		self urlTextField theText: (providerKey = 'bluesky'
			ifTrue: ['']
			ifFalse: ['https://'])].
	
	providerKey = 'bluesky'
		ifTrue: [
			self urlTextField helpText: 'Bluesky Handle (e.g. alice.bsky.social)'.
			self tokenTextField helpText: 'App Password']
		ifFalse: [
			self urlTextField helpText: 'Server URL (with https://)'.
			self tokenTextField helpText: 'OAuth code or access token'].
	
	self resultTextLabel contents: ('<i>Provider set to ', providerKey, '.</i>') asHtmlText.
	^ true