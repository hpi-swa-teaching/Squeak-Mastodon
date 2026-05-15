render
addNewReplyTemplateTitle

	| textareaWrapper |
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper := MTUIView setWrapper: textareaWrapper.
	
	replyTemplateTitle := MTUITextMorph new.
	replyTemplateTitle 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
		
	textareaWrapper addMorphBack: replyTemplateTitle.
	
	self addMorphBack: textareaWrapper.
	
