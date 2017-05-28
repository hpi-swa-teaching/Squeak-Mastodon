as yet unclassified
avatarMorph
	image := STMedia imageMorphFrom: self tweet user profileImageUrl.
	image ifNotNil: [
	image
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image]