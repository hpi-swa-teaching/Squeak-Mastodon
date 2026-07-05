render
getNoteText

	^ MTUITextMorph new
		hResizing: #spaceFill;
		contents: self account note asHtmlText;
		wrapFlag: true;
		addDependent: self;
		yourself