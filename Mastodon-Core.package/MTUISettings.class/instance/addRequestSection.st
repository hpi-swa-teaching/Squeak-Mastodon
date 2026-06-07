render
addRequestSection
	| requestButton logoutButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Enter Mastodon instance. Leave code empty to get authorize link.' asHtmlText).
	
	requestWrapper := MTUIView setMorph: (Morph new borderWidth: 1).
		
	urlTextField := MTLineEdit new.
	urlTextField hResizing: #rigid; width: 500; height: 36.
	urlTextField theText: 'https://'.
	urlTextField helpText: 'Mastodon server URL'.
	requestWrapper addMorphBack: urlTextField.

	tokenTextField := MTLineEdit new.
	tokenTextField hResizing: #rigid; width: 500; height: 36.
	tokenTextField theText: ''.
	tokenTextField helpText: 'OAuth code from authorize page'.
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
	
	urlTextField nextField: tokenTextField.
	tokenTextField nextField: urlTextField.
	
	self addMorphBack: requestWrapper.
	self addResultSection.
	resultTextLabel contents: ' '
	