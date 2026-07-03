accessing
blueSkyProvider

	| baseURL token |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: ['https://bsky.social'].
	baseURL isEmptyOrNil ifTrue: [baseURL := 'https://bsky.social'].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	
	(self blueSkyInstance notNil and: [self blueSkyInstance baseURL = baseURL]) ifTrue: [
		self blueSkyInstance token: token.
		^ self blueSkyInstance].
	
	blueSkyInstance := MTBlueSkyApi with: baseURL token: token.
	^ self blueSkyInstance