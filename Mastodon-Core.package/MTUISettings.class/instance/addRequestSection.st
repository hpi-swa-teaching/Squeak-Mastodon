render
addRequestSection
	| requestButton logoutButton providerButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Enter server URL. Leave code empty to get authorize link (Mastodon only).' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.

	providerTextField := UiLineEdit new.
	providerTextField theText: (MTSettingsStore default at: #provider ifAbsent: [#mastodon]) asString.
	providerTextField helpText: 'Provider (mastodon or bluesky)'.
	requestWrapper addMorphBack: providerTextField.

	providerButton := UiPushButton new.
	providerButton text: 'Apply Provider'.
	self
		connect: providerButton
		signal: #clicked:
		toSelector: #applyProviderSelection.
	requestWrapper addMorphBack: providerButton.
		
	urlTextField := UiLineEdit new.
	urlTextField theText: ''.
	urlTextField helpText: 'Server URL (with https://)'.
	requestWrapper addMorphBack: urlTextField.

	tokenTextField := UiLineEdit new.
	tokenTextField theText: ''.
	tokenTextField helpText: 'OAuth code or access token'.
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
	
