render
imageMorph

	imageMorph ifNotNil: [^ imageMorph].
	imageMorph := MTMedia imageMorphFrom: (self toot media at: 1 ifAbsent: [^ nil]) previewUrl.
	imageMorph cornerRadius: 20.
	imageMorph
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent;
		setNewImageFrom: (imageMorph form scaledToSize: 300).
	
	^ imageMorph