render
addNewReplyTemplateTitle

	| textareaWrapper |
	textareaWrapper := MTUIView setWrapper: (RectangleMorph new borderWidth: 1).
	
	self replyTemplateTitle: (MTUITextMorph new
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true;
		yourself).
	
	textareaWrapper addMorphBack: self replyTemplateTitle.
	
	self addMorphBack: textareaWrapper