render-container
getContainer

	^ Morph new
		layoutPolicy: TableLayout new;
		hResizing: #spaceFill;
		color: Color transparent