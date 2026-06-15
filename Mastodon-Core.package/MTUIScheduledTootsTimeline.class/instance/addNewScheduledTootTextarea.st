render
addNewScheduledTootTextarea
	| textareaWrapper |
	
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView setWrapper: textareaWrapper.
	
	scheduledTootTextarea := MTUITextMorph new.
	scheduledTootTextarea 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
	textareaWrapper addMorphBack: scheduledTootTextarea.
	
	self addMorphBack: textareaWrapper.