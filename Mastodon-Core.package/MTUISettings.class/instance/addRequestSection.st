render
addRequestSection

	| requestButton logoutButton requestWrapper lineEditWidth lineEditHeight |
	self addMorphBack: (TextMorph new contents: 'Enter Mastodon instance. Leave code empty to get authorize link.' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
	
	providerTextField := UiLineEdit new.
	providerTextField theText: (MTSettingsStore default at: #provider ifAbsent: [#mastodon]) asString.
	providerTextField helpText: 'Provider (mastodon or bluesky)'.
	requestWrapper addMorphBack: providerTextField.
	
	providerButton := UiPushButton new.
	providerButton text: 'Apply Provider'.
	self connect: providerButton signal: #clicked: toSelector: #applyProviderSelection.
	requestWrapper addMorphBack: providerButton.
	
	lineEditWidth := 500.
	lineEditHeight := 36.
	
	urlTextField := MTLineEdit new.
	urlTextField
		hResizing: #rigid;
		width: lineEditWidth;
		height: lineEditHeight.
	urlTextField theText: 'https://'.
	urlTextField helpText: 'Mastodon server URL'.
	requestWrapper addMorphBack: urlTextField.
	
	tokenTextField := MTLineEdit new.
	tokenTextField
		hResizing: #rigid;
		width: lineEditWidth;
		height: lineEditHeight.
	tokenTextField theText: ''.
	tokenTextField helpText: 'OAuth code from authorize page'.
	requestWrapper addMorphBack: tokenTextField.
	
	requestButton := UiPushButton new.
	requestButton text: 'Login / Get Link'.
	self connect: requestButton signal: #clicked: toSelector: #authenticateApplication.
	requestWrapper addMorphBack: requestButton.
	
	logoutButton := UiPushButton new.
	logoutButton text: 'Logout'.
	self connect: logoutButton signal: #clicked: toSelector: #logout.
	requestWrapper addMorphBack: logoutButton.
	
	urlTextField nextField: tokenTextField.
	tokenTextField nextField: urlTextField.
	
	self addMorphBack: requestWrapper.
	self addResultSection.
	resultTextLabel contents: ' '