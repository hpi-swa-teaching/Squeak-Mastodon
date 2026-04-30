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
	resultTextLabel contents: ('<i>Provider set to ', providerKey, '.</i>') asHtmlText.
	^ true