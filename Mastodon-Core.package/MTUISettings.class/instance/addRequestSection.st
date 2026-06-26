render
addRequestSection
	| requestButton logoutButton providerButton sessions requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Enter server URL. Leave code empty to get authorize link (Mastodon only).' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper := MTUIView setMorph: requestWrapper.
	
	sessions := (MTSettingsStore default
   					 at: #sessions
   					 ifAbsent: [OrderedCollection new]).
	
	sessionsComboBox := UiComboBox new.
	self refreshSessionsComboBox: sessions.
	self
	    connect: sessionsComboBox
	    signal: #currentIndexChanged:text:
	    toSelector: #switchToSelectedSession.
	requestWrapper addMorphBack: sessionsComboBox.

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
		
	urlTextField := MTLineEdit new.
	urlTextField hResizing: #rigid; width: 500; height: 36.
	urlTextField theText: 'https://'.
	urlTextField helpText: 'Mastodon server URL'.
	requestWrapper addMorphBack: urlTextField.

	tokenTextField := MTLineEdit new.
	tokenTextField hResizing: #rigid; width: 500; height: 36.
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
	
	urlTextField nextField: tokenTextField.
	tokenTextField nextField: urlTextField.
	
	self addMorphBack: requestWrapper.
	self addResultSection.
	resultTextLabel contents: ' '.
	