render
addNewReplyTemplateTextArea

	| textareaWrapper |
	textareaWrapper := MTUIView setWrapper: (RectangleMorph new borderWidth: 1).
	
	self replyTemplateTextArea: (MTUITextMorph new
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true;
		yourself).
	textareaWrapper addMorphBack: self replyTemplateTextArea.
	
	self addMorphBack: textareaWrapper