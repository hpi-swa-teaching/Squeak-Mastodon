helpers
blueSkyBaseURL

	| baseURL |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: [self defaultBlueSkyURL].
	baseURL isEmpty ifTrue: [^ self defaultBlueSkyURL].
	^ baseURL