render
getRowContainer

	^ Morph new
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 10;
		hResizing: #rigid;
		vResizing: #shrinkWrap;
		extent: 500 @ 80