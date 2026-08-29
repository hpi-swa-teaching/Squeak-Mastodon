accessing
blueSkyProvider

	| baseURL token refreshToken |
	baseURL := MTSettingsStore default at: #baseURL ifAbsent: ['https://bsky.social'].
	baseURL isEmptyOrNil ifTrue: [baseURL := 'https://bsky.social'].
	token := MTSettingsStore default at: #token ifAbsent: [nil].
	refreshToken := MTSettingsStore default at: #refreshToken ifAbsent: [nil].
	
	(self blueSkyInstance notNil and: [self blueSkyInstance baseURL = baseURL]) ifTrue: [
		self blueSkyInstance token: token.
		self blueSkyInstance refreshToken: refreshToken.
		^ self blueSkyInstance].
	
	self blueSkyInstance: (MTBlueSkyApi with: baseURL token: token).
	self blueSkyInstance refreshToken: refreshToken.
	^ self blueSkyInstance