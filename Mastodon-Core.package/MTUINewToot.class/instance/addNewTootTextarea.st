render
addNewTootTextarea

	| textareaWrapper |
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView setWrapper: textareaWrapper.
	
	self tootTextArea: (MTUITextMorph new
		recipient: self;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true;
		yourself).
	textareaWrapper addMorphBack: self tootTextArea.
	
	self addMorphBack: textareaWrapper