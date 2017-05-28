as yet unclassified
verifyPin
	| pin |
	pin := pinTextField theText asString.
	(mastodonApi loginWithPin: pin)
		ifTrue: [ MTSettingsStore default at: #accessToken put: self mastodonApi accessToken.
				MTSettingsStore default at: #accessTokenSecret put: self mastodonApi accessTokenSecret.
				resultTextLabel contents: ('<i>Successfully logged in as ', mastodonApi screenName, '</i>') asHtmlText]
		ifFalse: [resultTextLabel contents: '<i>Login failed. Please try again</i>' asHtmlText].