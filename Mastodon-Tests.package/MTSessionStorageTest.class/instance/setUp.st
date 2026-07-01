as yet unclassified
setUp
	super setUp.

	storedSettings := MTSettingsStore default copy.
	MTSettingsStore default removeKey: #sessions ifAbsent: [].

	view := MTUISettings new.