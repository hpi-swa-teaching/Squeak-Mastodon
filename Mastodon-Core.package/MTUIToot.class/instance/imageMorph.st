render
imageMorph
	image := MTMedia imageMorphFrom: ((self toot media at: 1 ifAbsent: [ ^ nil ]) previewUrl).
	image ifNil: [^ nil].
	image cornerRadius: 20.
	image
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent;
		setNewImageFrom: (image form scaledToSize: 300).
	
	^ image