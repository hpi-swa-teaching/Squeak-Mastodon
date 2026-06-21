render-containers
getFooterContainer

	^ Morph new
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		color: Color transparent;
		cellInset: 10