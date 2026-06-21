actions
deleteCredentials: aCredential

	MTCredentialStore getInstance removeCredentials: aCredential.
	(aCredential = self mastodonApi getCurrentCredentials) ifTrue: [MTMastodonApi removeInstance].
	self refreshWindow