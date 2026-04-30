accessing
blueSkyProvider
	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: ['https://bsky.social'].
	baseURL isEmpty ifTrue: [baseURL := 'https://bsky.social'].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	^ MTBlueSkyApi with: baseURL token: token