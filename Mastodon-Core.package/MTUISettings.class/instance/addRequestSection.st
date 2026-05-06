render
addRequestSection

	| requestButton logoutButton requestWrapper demoButton |
	self addMorphBack: (TextMorph new contents: 'Enter Mastodon instance. Leave code empty to get authorize link.' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
		
	urlTextField := UiLineEdit new.
	urlTextField theText: ''.
	urlTextField helpText: 'Mastodon server URL (with https://)'.
	requestWrapper addMorphBack: urlTextField.

	tokenTextField := UiLineEdit new.
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
	self addMorphBack: requestWrapper.
	
	demoButton := UiPushButton new.
	demoButton text: 'Demo'.
	self
		connect: demoButton
 		signal: #clicked:
 		toSelector: #loginToDemo.
	requestWrapper addMorphBack: demoButton.
	
	self addResultSection.
	resultTextLabel contents: ' '.
	
