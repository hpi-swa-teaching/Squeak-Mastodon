as yet unclassified
openAuthenticationUrl
	| url consumerKey consumerSecret |
	consumerKey := consumerKeyTextField theText asString.
	consumerSecret :=  consumerSecretTextField theText asString.
	
	mastodonApi consumerKey: consumerKey.
	mastodonApi consumerSecret: consumerSecret.
	
	MTSettingsStore default at: #consumerKey put: consumerKey.
	MTSettingsStore default at: #consumerSecret put: consumerSecret.
	
	mastodonApi requestAuthenticationToken 
		ifFalse:[resultTextLabel contents: '<i>Requesting a pin failed</i>' asHtmlText.
			     ^ self].
	url := mastodonApi authenticationUrl.
	Transcript show: url.
	MTUtils openLink: url.