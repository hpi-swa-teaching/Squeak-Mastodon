as yet unclassified
openAuthenticationUrl
	| url consumerKey consumerSecret |
	consumerKey := consumerKeyTextField theText asString.
	consumerSecret :=  consumerSecretTextField theText asString.
	
	twitterApi consumerKey: consumerKey.
	twitterApi consumerSecret: consumerSecret.
	
	STSettingsStore default at: #consumerKey put: consumerKey.
	STSettingsStore default at: #consumerSecret put: consumerSecret.
	
	twitterApi requestAuthenticationToken 
		ifFalse:[resultTextLabel contents: '<i>Requesting a pin failed</i>' asHtmlText.
			     ^ self].
	url := twitterApi authenticationUrl.
	Transcript show: url.
	MTUtils openLink: url.