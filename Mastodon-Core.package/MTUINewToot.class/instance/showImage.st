image
showImage

	self imageMorph
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		setNewImageFrom: (self imageMorph form scaledToSize: 300).
	self addMorphBack: self imageMorph