render-containers
getFooterContainer

	^ Morph new
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellPositioning: #center;
		color: Color transparent;
		cellInset: 10