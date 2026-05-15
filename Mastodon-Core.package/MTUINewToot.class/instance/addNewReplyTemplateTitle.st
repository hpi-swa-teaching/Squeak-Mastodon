render
addNewReplyTemplateTitle
	
	replyTemplateTitle := MTUITextMorph new.
	replyTemplateTitle 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		contents: '';
		wrapFlag: true.
	self addMorphBack: replyTemplateTitle.
	
