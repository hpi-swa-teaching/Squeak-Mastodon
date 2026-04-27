render
addRequestSection
	| requestButton logoutButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Enter Mastodon instance. Leave token empty to get authorize link.' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
		
	urlTextField := UiLineEdit new.
	urlTextField theText: (MTSettingsStore default at: #baseURL ifAbsent: ['']). 
	urlTextField helpText: 'Mastodon server URL (with https://)'.
	requestWrapper addMorphBack: urlTextField.

	tokenTextField := UiLineEdit new.
	tokenTextField theText: (MTSettingsStore default at: #token ifAbsent: ['']). 
	tokenTextField helpText: 'Mastodon access token'.
	requestWrapper addMorphBack: tokenTextField.
	
	requestButton := UiPushButton new.
	requestButton text: 'Login / Get Link'.
	self
		connect: requestButton
 		signal: #clicked:
 		toSelector: #authenticateApplication.
	requestWrapper addMorphBack: requestButton.
	
	logoutButton := UiPushButton new.
	logoutButton text: 'Logout'.
	self
		connect: logoutButton
 		signal: #clicked:
 		toSelector: #logout.
	requestWrapper addMorphBack: logoutButton.
	self addMorphBack: requestWrapper.
	self addResultSection.
	resultTextLabel contents: ' '.
	
