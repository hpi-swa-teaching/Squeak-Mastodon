render-container
getRowContainer

	^ Morph new
		color: Color white;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellInset: 10;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		color: self rowContainerColor