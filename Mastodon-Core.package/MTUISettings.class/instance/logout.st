as yet unclassified
logout
	self mastodonApi isAuthenticated 
		ifFalse: [self inform: 'Please login first.'. 
				^ false].
	MTSettingsStore reset.
	"self mastodonApi reset."
	MTMastodonApi allInstancesDo: [:instance | instance := nil].
	self addResultSection.
	"self owner owner owner mastodonApi: MTMastodonApi new."
	resultTextLabel contents: ('<i>Successfully logged out</i>') asHtmlText.