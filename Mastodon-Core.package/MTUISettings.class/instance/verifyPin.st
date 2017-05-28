as yet unclassified
verifyPin
	| pin |
	pin := pinTextField theText asString.
	(twitterApi loginWithPin: pin)
		ifTrue: [ MTSettingsStore default at: #accessToken put: self mastodonApi accessToken.
				MTSettingsStore default at: #accessTokenSecret put: self mastodonApi accessTokenSecret.
				resultTextLabel contents: ('<i>Successfully logged in as ', twitterApi screenName, '</i>') asHtmlText]
		ifFalse: [resultTextLabel contents: '<i>Login failed. Please try again</i>' asHtmlText].