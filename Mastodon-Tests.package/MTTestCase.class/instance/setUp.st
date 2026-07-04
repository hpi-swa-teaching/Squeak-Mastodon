running
setUp
	
	instanceAPI := MTMastodonApi getInstance.
	instanceWindow := MTUIWindow instance.
	instanceCredentials := MTCredentialStore getInstance.
	
	MTMastodonApi instance: MTDataProviderAPI new.
	MTUIWindow instance: MTUIWindow new.
	MTCredentialStore removeInstance.
	
	
	super setUp.