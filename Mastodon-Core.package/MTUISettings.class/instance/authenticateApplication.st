actions
authenticateApplication
	| baseURL password username |
	password := passwordTextField theText asString.
	username :=  usernameTextField theText asString.
	baseURL :=  urlTextField theText asString.
	
	self mastodonApi password: password.
	self mastodonApi username: username.
	self mastodonApi baseURL: baseURL.
	
	MTSettingsStore default at: #password put: password.
	MTSettingsStore default at: #username put: username.
	MTSettingsStore default at: #baseURL put: baseURL.
	
	self mastodonApi registerApplication.
	self mastodonApi getAccessToken. 
	MTSettingsStore default at: #token put: self mastodonApi token.
	self verifyAccount.