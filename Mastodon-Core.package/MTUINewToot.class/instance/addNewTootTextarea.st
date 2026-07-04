render
addNewTootTextarea

	| textareaWrapper |
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView setWrapper: textareaWrapper.
	
	self tootTextArea: MTUITextMorph new.
	self tootTextArea
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
	textareaWrapper addMorphBack: self tootTextArea.
	
	self addMorphBack: textareaWrapper