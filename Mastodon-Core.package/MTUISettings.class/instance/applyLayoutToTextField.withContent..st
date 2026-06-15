helpers
applyLayoutToTextField: aTextField withContent: aString

	aTextField
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderWidth: 1;
		contents: aString.
	^ aTextField