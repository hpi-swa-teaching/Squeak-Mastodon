image
showImage

	imageMorph = 'empty' ifFalse: [
		imageMorph
			layoutPolicy: TableLayout new;
			listDirection: #leftToRight;
			layoutInset: 0;
			cellInset: 10;
			wrapCentering: #topLeft;
			listCentering: #topLeft;
			color: Color transparent;
			setNewImageFrom: (imageMorph form scaledToSize: 300).
		"hResizing: #spaceFill;
		vResizing: #shrinkWrap;"
		self addMorphBack: imageMorph]