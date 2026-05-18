render
avatarMorph
	image := MTMedia imageMorphFrom: self toot acct avatar.
	image ifNotNil: [
	image
		vResizing: #rigid;
		hResizing: #rigid;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image]