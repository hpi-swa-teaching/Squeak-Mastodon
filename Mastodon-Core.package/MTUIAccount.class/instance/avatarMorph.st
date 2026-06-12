render
avatarMorph
	image := MTMedia imageMorphFrom: self account avatar.
	image ifNotNil: [
	image
		vResizing: #shrinkWrap;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image]