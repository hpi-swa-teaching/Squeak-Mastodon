render-containers
getRowContainer

	^ Morph new
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 10;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: 500 @ 80;
		color: Color veryVeryLightGray