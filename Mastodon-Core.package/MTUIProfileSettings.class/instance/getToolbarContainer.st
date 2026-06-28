render-container
getToolbarContainer

	^ Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		listCentering: #center;
		cellPositioning: #center;
		vResizing: #shrinkWrap;
		cellInset: 5;
		yourself