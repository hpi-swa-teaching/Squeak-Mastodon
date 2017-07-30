render
avatarMorph
	image := MTMedia imageMorphFrom: self account avatar.
	image ifNotNil: [
	image
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image]