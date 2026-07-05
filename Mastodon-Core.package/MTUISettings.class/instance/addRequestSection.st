render
addRequestSection

	| requestButton logoutButton providerButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Enter server URL. Leave code empty to get authorize link (Mastodon only).' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
	
	self sessionsComboBox: UiComboBox new.
	self loadComboBox.
	self
		connect: self sessionsComboBox
		signal: #currentIndexChanged:text:
		toSelector: #switchToSelectedSession.
	requestWrapper addMorphBack: self sessionsComboBox.
	
	self providerTextField: UiLineEdit new.
	self providerTextField theText: (MTSettingsStore default at: #provider ifAbsent: [#mastodon]) asString.
	self providerTextField helpText: 'Provider (mastodon or bluesky)'.
	requestWrapper addMorphBack: self providerTextField.
	
	providerButton := UiPushButton new.
	providerButton text: 'Apply Provider'.
	self connect: providerButton signal: #clicked: toSelector: #applyProviderSelection.
	requestWrapper addMorphBack: providerButton.
	
	self urlTextField: MTLineEdit new.
	self urlTextField
		hResizing: #rigid;
		width: 500;
		height: 36.
	self urlTextField theText: ((MTSettingsStore default at: #provider ifAbsent: [#mastodon]) = #bluesky
		ifTrue: ['']
		ifFalse: ['https://']).
	self urlTextField helpText: 'Mastodon server URL'.
	requestWrapper addMorphBack: self urlTextField.
	
	self tokenTextField: MTLineEdit new.
	self tokenTextField
		hResizing: #rigid;
		width: 500;
		height: 36.
	self tokenTextField theText: ''.
	self tokenTextField helpText: 'OAuth code or access token'.
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
	self resultTextLabel contents: ' ' asHtmlText