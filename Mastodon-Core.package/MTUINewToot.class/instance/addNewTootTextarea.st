as yet unclassified
addNewTootTextarea
	| textareaWrapper |
	
	textareaWrapper := RectangleMorph new borderWidth: 1.
	textareaWrapper 
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #left;
		color: Color white;
		borderColor: Color gray;
		borderWidth: 1.
	
	tootTextArea := MTUITextMorph new.
	tootTextArea 
		textSize: 1;
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1;
		contents: '';
		wrapFlag: true.
	textareaWrapper addMorphBack: tootTextArea.
	
	self addMorphBack: textareaWrapper.
	
