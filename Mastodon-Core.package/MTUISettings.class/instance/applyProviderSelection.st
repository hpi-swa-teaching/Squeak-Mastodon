actions
applyProviderSelection
	| providerKey |
	providerTextField ifNil: [^ false].
	providerKey := (providerTextField theText asString) withBlanksTrimmed asLowercase.
	providerKey isEmpty ifTrue: [providerKey := 'mastodon'].
	((providerKey = 'mastodon') or: [providerKey = 'bluesky'])
		ifFalse: [
			resultTextLabel contents: '<i>Unknown provider. Use mastodon or bluesky.</i>' asHtmlText.
			^ false].
	MTSettingsStore default at: #provider put: providerKey asSymbol.
	MTUIWindow instance ifNotNil: [MTUIWindow instance refreshProvider].
	
	providerKey = 'bluesky' ifTrue: [
		urlTextField helpText: 'Bluesky Server (empty for bsky.social)'.
		tokenTextField helpText: 'handle:app-password (e.g. alice.bsky.social:xxxx-xxxx)'.
	] ifFalse: [
		urlTextField helpText: 'Server URL (with https://)'.
		tokenTextField helpText: 'OAuth code or access token'.
	].
	
	resultTextLabel contents: ('<i>Provider set to ', providerKey, '.</i>') asHtmlText.
	^ true