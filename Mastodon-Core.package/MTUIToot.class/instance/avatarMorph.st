render
avatarMorph

	| avatar |
	avatar := MTMedia imageMorphFrom: self object account avatar.
	avatar ifNil: [^ nil].
	avatar
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setNewImageFrom: (avatar form scaledToSize: 48).
	^ avatar
