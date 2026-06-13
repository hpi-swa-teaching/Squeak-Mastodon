render
addNewTootTextarea

	| textareaWrapper |
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView new setWrapper: textareaWrapper.
	
	tootTextArea := MTUITextMorph new.
	tootTextArea
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
	textareaWrapper addMorphBack: self tootTextArea.
	
	self addMorphBack: textareaWrapper