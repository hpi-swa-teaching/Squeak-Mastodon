running
setUp

	url := MTSettingsStore default at: #baseURL.
	token := MTSettingsStore default at: #token.
	MTSettingsStore default
		at: #baseURL put: nil;
		at: #token put: nil.
	super setUp