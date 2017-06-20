as yet unclassified
avatarMorph
	image := MTMedia imageMorphFrom: self avatar.
	image ifNotNil: [
	image
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image]