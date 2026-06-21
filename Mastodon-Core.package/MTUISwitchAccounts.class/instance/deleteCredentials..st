actions
deleteCredentials: aCredential

	MTCredentialStore removeCredentials: aCredential.
	aCredential = self mastodonApi getCurrentCredentials ifTrue: [MTMastodonApi removeInstance].
	self refreshWindow