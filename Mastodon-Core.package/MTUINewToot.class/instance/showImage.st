image
showImage

	self imageMorph
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent;
		setNewImageFrom: (self imageMorph form scaledToSize: 300).
	self addMorphBack: self imageMorph