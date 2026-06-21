render-containers
getContainer

	^ Morph new
		color: Color transparent;
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #center;
		wrapCentering: #center;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		cellInset: 5