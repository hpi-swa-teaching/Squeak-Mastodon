development
openDemo
	(self instance: self new) mastodonApi 
		token: (Smalltalk at: #DemoLoginToken);
		baseURL: (MTSettingsStore default at: #demoURL);
		verifyCredentials.
	self instance 
		loadNewTootView;
		openWindow.