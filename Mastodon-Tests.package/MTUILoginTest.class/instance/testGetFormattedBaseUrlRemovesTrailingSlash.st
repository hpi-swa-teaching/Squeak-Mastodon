helpers
testGetFormattedBaseUrlRemovesTrailingSlash

	| loginView |
	loginView := MTUILogin new.
	loginView getBaseUrlField theText: 'https://mastodon.de/'.
	
	self assert: loginView getFormattedBaseUrl equals: 'https://mastodon.de'