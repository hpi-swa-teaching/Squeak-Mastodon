running
tearDown

	MTMastodonApi changeInstanceTo: ((instanceAPI class = MTDataProviderAPI or: [instanceAPI isNil])
		ifTrue: MTMastodonApi new
		ifFalse: instanceAPI).
	MTUIWindow instance: instanceWindow.
	MTCredentialStore setInstance: instanceCredentials.
	
	super tearDown