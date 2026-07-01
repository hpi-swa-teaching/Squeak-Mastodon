as yet unclassified
setUp
	super setUp.

	MTSettingsStore default removeKey: #sessions ifAbsent: [].

	view := MTUISettings new.