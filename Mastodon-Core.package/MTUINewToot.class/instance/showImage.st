image
showImage

	self imageMorph = 'empty' ifFalse: [
		self imageMorph
			layoutPolicy: TableLayout new;
			listDirection: #leftToRight;
			layoutInset: 0;
			cellInset: 10;
			wrapCentering: #topLeft;
			listCentering: #topLeft;
			color: Color transparent;
			setNewImageFrom: (self imageMorph form scaledToSize: 300).
		"hResizing: #spaceFill;
		vResizing: #shrinkWrap;"
		self addMorphBack: self imageMorph]