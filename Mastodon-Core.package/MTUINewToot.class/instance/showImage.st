image
showImage
	"| imageMorph |
	imageMorph := self morphFromPath."
	imageMorph
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		setNewImageFrom: (imageMorph form scaledToSize: 300).
	self addMorphBack: imageMorph