render
initAvatarMorph

	| avatar |
	avatar := MTMedia imageMorphFrom: self toot acct avatar.
	avatar ifNotNil: [
		avatar
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (avatar form scaledToSize: 48).
		^ avatar]