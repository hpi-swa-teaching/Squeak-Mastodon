as yet unclassified
addNewTweetTextarea
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
	
	tweetTextArea := TextMorph new.
	tweetTextArea 
		hResizing: #spaceFill;
		borderColor: Color gray;
		borderColor: 1.
	textareaWrapper addMorphBack: tweetTextArea.
	
	self addMorphBack: textareaWrapper.
	
