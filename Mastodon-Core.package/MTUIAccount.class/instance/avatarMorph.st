render
avatarMorph

	| avatar |
	avatar := MTMedia imageMorphFrom: self object avatar.
	avatar ifNotNil: [
		avatar
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (avatar form scaledToSize: 48).
		^ avatar]