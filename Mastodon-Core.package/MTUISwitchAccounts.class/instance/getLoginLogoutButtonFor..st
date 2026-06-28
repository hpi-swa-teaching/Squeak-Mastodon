helpers
getLoginLogoutButtonFor: aCredential

	(self mastodonApi hasToken and: [aCredential = self mastodonApi getCurrentCredentials])
		ifTrue: [^ self getLogoutButtonFor: aCredential]
		ifFalse: [^ self getLoginButtonFor: aCredential]