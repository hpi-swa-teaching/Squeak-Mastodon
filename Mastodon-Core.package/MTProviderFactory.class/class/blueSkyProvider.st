accessing
blueSkyProvider
	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: ['https://bsky.social'].
	baseURL isEmptyOrNil ifTrue: [baseURL := 'https://bsky.social'].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	
	(blueSkyInstance notNil and: [blueSkyInstance baseURL = baseURL])
		ifTrue: [
			blueSkyInstance token: token.
			^ blueSkyInstance].
			
	blueSkyInstance := MTBlueSkyApi with: baseURL token: token.
	^ blueSkyInstance