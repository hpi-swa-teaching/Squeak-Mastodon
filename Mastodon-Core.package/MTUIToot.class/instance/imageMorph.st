render
imageMorph

	image := MTMedia imageMorphFrom: (self toot media at: 1 ifAbsent: [^ nil]) previewUrl.
	self image cornerRadius: 20.
	self image
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent;
		setNewImageFrom: (self image form scaledToSize: 300).
	
	^ self image