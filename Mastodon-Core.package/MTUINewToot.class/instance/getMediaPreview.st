render
getMediaPreview

	^ Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		layoutInset: -5;
		cellInset: 5;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent