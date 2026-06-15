render
addNewScheduledTootTextarea

	| textareaWrapper |
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView setWrapper: textareaWrapper.
	
	scheduledTootTextArea := MTUITextMorph new.
	scheduledTootTextArea
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
	textareaWrapper addMorphBack: scheduledTootTextArea.
	
	self addMorphBack: textareaWrapper