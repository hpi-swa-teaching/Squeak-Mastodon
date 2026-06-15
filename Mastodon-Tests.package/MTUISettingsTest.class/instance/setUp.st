running
setUp

	url := MTSettingsStore default at: #baseURL ifAbsent: nil.
	token := MTSettingsStore default at: #token ifAbsent: nil.
	MTSettingsStore default
		at: #baseURL put: nil;
		at: #token put: nil.
	super setUp