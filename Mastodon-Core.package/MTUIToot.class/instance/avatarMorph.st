render
avatarMorph

	image := MTMedia imageMorphFrom: self toot acct avatar.
	image ifNotNil: [
		image
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (image form scaledToSize: 48).
		^ image]