as yet unclassified
addRequestSection
	| requestButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Enter Mastodon email and password' asHtmlText).
	
	requestWrapper := Morph new borderWidth: 1.
	requestWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		cellInset: 10;
		borderWidth: 1.
		
	usernameTextField := UiLineEdit new.
	usernameTextField theText: (MTSettingsStore default at: #username ifAbsent: ['']). 
	usernameTextField helpText: 'Mastodon Email'.
	requestWrapper addMorphBack: usernameTextField.
	
	passwordTextField := UiLineEdit new.
	passwordTextField theText: (MTSettingsStore default at: #password ifAbsent: ['']). 
	passwordTextField helpText: 'Mastodon Password'.
	requestWrapper addMorphBack: passwordTextField.
	
	urlTextField := UiLineEdit new.
	urlTextField theText: (MTSettingsStore default at: #baseURL ifAbsent: ['']). 
	urlTextField helpText: 'Mastodon server URL (with https://)'.
	requestWrapper addMorphBack: urlTextField.
	
	requestButton := UiPushButton new.
	requestButton text: 'Login'.
	self
		connect: requestButton
 		signal: #clicked:
 		toSelector: #authenticateApplication.
	requestWrapper addMorphBack: requestButton.
	
	self addMorphBack: requestWrapper.
