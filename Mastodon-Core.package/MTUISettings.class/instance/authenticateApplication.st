as yet unclassified
authenticateApplication
	| baseURL password username |
	password := passwordTextField theText asString.
	username :=  usernameTextField theText asString.
	baseURL :=  'https://', urlTextField theText asString.
	
	self mastodonApi password: password.
	self mastodonApi username: username.
	self mastodonApi baseURL: baseURL.
	
	MTSettingsStore default at: #password put: password.
	MTSettingsStore default at: #username put: username.
	MTSettingsStore default at: #baseURL put: baseURL.
	
	self mastodonApi registerApplication.
	self mastodonApi getAccessToken. 
	self addResultSection.
	self verifyAccount.