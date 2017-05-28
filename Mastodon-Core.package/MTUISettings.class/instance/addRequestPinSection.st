as yet unclassified
addRequestPinSection
	| requestButton pinRequestWrapper |
	self addMorphBack: (TextMorph new contents: '1. Enter Twitter App credentials and request a pin' asHtmlText).
	
	pinRequestWrapper := Morph new borderWidth: 1.
	pinRequestWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		cellInset: 10;
		borderWidth: 1.
		
	consumerKeyTextField := UiLineEdit new.
	consumerKeyTextField theText: (STSettingsStore default at: #consumerKey  ifAbsent: ['']). 
	consumerKeyTextField helpText: 'Twitter Consumer Key'.
	pinRequestWrapper addMorphBack: consumerKeyTextField.
	
	consumerSecretTextField := UiLineEdit new.
	consumerSecretTextField theText: (STSettingsStore default at: #consumerSecret  ifAbsent: ['']). 
	consumerSecretTextField helpText: 'Twitter Consumer Secret'.
	pinRequestWrapper addMorphBack: consumerSecretTextField.
	
	requestButton := UiPushButton new.
	requestButton text: 'Request pin'.
	self
		connect: requestButton
 		signal: #clicked:
 		toSelector: #openAuthenticationUrl.
	pinRequestWrapper addMorphBack: requestButton.
	
	self addMorphBack: pinRequestWrapper.
