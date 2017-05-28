as yet unclassified
addPinSection
	| pinSectionWrapper verifyButton |
	self addMorphBack: (TextMorph new contents: '2. Enter pin and verify it:' asHtmlText).
	pinSectionWrapper := Morph new borderWidth: 1.
	pinSectionWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		cellInset: 10;
		borderWidth: 1.
		
	pinTextField := UiLineEdit new.
	pinSectionWrapper addMorphBack: pinTextField.
	
	verifyButton := UiPushButton new.
	verifyButton text: 'Verify'.
	self
		connect: verifyButton
 		signal: #clicked:
 		toSelector: #verifyPin.
	pinSectionWrapper addMorphBack: verifyButton.
	self addMorphBack: pinSectionWrapper.