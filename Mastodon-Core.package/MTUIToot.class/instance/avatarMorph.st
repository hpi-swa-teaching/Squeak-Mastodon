render
avatarMorph

	image := MTMedia imageMorphFrom: self toot acct avatar.
	image ifNil: [^ nil].
	image
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image