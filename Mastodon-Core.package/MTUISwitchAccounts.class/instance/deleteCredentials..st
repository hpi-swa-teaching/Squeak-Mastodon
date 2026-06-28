actions
deleteCredentials: aCredential

	MTCredentialStore getInstance removeCredentials: aCredential.
	(self mastodonApi hasToken and: [aCredential = self mastodonApi getCurrentCredentials]) ifTrue: [MTMastodonApi removeInstance].
	self refreshWindow