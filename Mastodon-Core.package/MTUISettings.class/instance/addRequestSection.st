render
addRequestSection

	| requestButton logoutButton requestWrapper lineEditWidth lineEditHeight |
	self addMorphBack: (TextMorph new contents: 'Enter Mastodon instance. Leave code empty to get authorize link.' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
	
	self providerTextField: (UiLineEdit new
		theText: (MTSettingsStore default at: #provider ifAbsent: [#mastodon]) asString;
		helpText: 'Provider (mastodon or bluesky)';
		yourself).
	requestWrapper addMorphBack: self providerTextField.
	
	self providerButton: (UiPushButton new text: 'Apply Provider').
	self connect: self providerButton signal: #clicked: toSelector: #applyProviderSelection.
	requestWrapper addMorphBack: self providerButton.
	
	lineEditWidth := 500.
	lineEditHeight := 36.
	
	self urlTextField: (MTLineEdit new
		hResizing: #rigid;
		width: lineEditWidth;
		height: lineEditHeight;
		theText: 'https://';
		helpText: 'Mastodon server URL';
		yourself).
	requestWrapper addMorphBack: self urlTextField.
	
	self tokenTextField: (MTLineEdit new
		hResizing: #rigid;
		width: lineEditWidth;
		height: lineEditHeight;
		theText: '';
		helpText: 'OAuth code from authorize page';
		yourself).
	requestWrapper addMorphBack: self tokenTextField.
	
	requestButton := UiPushButton new.
	requestButton text: 'Login / Get Link'.
	self connect: requestButton signal: #clicked: toSelector: #authenticateApplication.
	requestWrapper addMorphBack: requestButton.
	
	logoutButton := UiPushButton new.
	logoutButton text: 'Logout'.
	self connect: logoutButton signal: #clicked: toSelector: #logout.
	requestWrapper addMorphBack: logoutButton.
	
	self urlTextField nextField: self tokenTextField.
	self tokenTextField nextField: self urlTextField.
	
	self addMorphBack: requestWrapper.
	self addResultSection.
	self resultTextLabel contents: ' '