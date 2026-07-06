render
getTextArea

	^ MTUITextMorph new
		hResizing: #spaceFill;
		contents: '';
		wrapFlag: true