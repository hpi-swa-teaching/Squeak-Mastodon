helpers
testGetFormattedBaseUrlAddsHttps

	| loginView |
	loginView := MTUILogin new.
	loginView getBaseUrlField theText: 'mastodon.de'.
	
	self assert: loginView getFormattedBaseUrl equals: 'https://mastodon.de'