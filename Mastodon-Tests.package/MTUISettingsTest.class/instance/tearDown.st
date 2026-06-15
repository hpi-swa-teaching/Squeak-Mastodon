running
tearDown

	MTSettingsStore default
		at: #baseURL put: url;
		at: #token put: token.
	
	super tearDown