render
addNewReplyTemplateTextarea
	| textareaWrapper |
	
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView setWrapper: textareaWrapper.
	
	replyTemplateTextArea := MTUITextMorph new.
	replyTemplateTextArea 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
	textareaWrapper addMorphBack: replyTemplateTextArea.
	
	self addMorphBack: textareaWrapper.
	
