render-container
getCredentialsContainer

	^ Morph new
		layoutPolicy: TableLayout new;
		color: Color transparent;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		listDirection: #topToBottom;
		cellInset: 10;
		layoutInset: 10;
		yourself