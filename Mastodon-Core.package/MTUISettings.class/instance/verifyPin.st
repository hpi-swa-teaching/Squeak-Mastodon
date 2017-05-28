as yet unclassified
verifyPin
	| pin |
	pin := pinTextField theText asString.
	(twitterApi loginWithPin: pin)
		ifTrue: [ STSettingsStore default at: #accessToken put: self twitterApi accessToken.
				STSettingsStore default at: #accessTokenSecret put: self twitterApi accessTokenSecret.
				resultTextLabel contents: ('<i>Successfully logged in as ', twitterApi screenName, '</i>') asHtmlText]
		ifFalse: [resultTextLabel contents: '<i>Login failed. Please try again</i>' asHtmlText].