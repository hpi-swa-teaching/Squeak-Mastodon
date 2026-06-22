actions
loginWithCredentials: aCredential

	MTMastodonApi changeInstanceTo: aCredential.
	self refreshWindow