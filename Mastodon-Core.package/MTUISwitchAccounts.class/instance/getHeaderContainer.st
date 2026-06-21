render-containers
getHeaderContainer

	^ Morph new
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		color: Color transparent;
		cellInset: (10@10 corner: 10@0)