render
getTextArea

	^ MTUITextMorph new
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderWidth: 1;
		contents: '';
		wrapFlag: true