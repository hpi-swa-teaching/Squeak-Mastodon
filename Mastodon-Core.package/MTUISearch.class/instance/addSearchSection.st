as yet unclassified
addSearchSection 
	| searchTextField searchButton requestWrapper |
	self addMorphBack: (TextMorph new contents: 'Search Users' asHtmlText).
		requestWrapper := Morph new borderWidth: 1.
		
		requestWrapper 
			layoutPolicy: TableLayout new;
			listDirection: #topToBottom;
			cellPositioning: #topLeft;
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			wrapCentering: #left;
			color: Color white;
			cellInset: 10;
			borderWidth: 1.
		
		searchTextField := UiLineEdit new.
		requestWrapper addMorphBack: searchTextField.
		searchButton := UiPushButton new.
		searchButton text: 'Search User'.
	self
		connect: searchButton
 		signal: #clicked:
 		toSelector: #search.
	
	requestWrapper addMorphBack: searchButton.
	
	self addMorphBack: requestWrapper.