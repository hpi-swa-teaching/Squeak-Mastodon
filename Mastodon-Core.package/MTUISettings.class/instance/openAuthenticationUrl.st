as yet unclassified
openAuthenticationUrl
	| url consumerKey consumerSecret |
	consumerKey := consumerKeyTextField theText asString.
	consumerSecret :=  consumerSecretTextField theText asString.
	
	tootApi consumerKey: consumerKey.
	tootApi consumerSecret: consumerSecret.
	
	MTSettingsStore default at: #consumerKey put: consumerKey.
	MTSettingsStore default at: #consumerSecret put: consumerSecret.
	
	tootApi requestAuthenticationToken 
		ifFalse:[resultTextLabel contents: '<i>Requesting a pin failed</i>' asHtmlText.
			     ^ self].
	url := tootApi authenticationUrl.
	Transcript show: url.
	MTUtils openLink: url.