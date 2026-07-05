running
setUp

	super setUp.
	
	self storedSettings: MTSettingsStore default copy.
	MTSettingsStore default removeKey: #sessions ifAbsent: [].
	
	self view: MTUISettings new