render
getAvatarMorph

	| avatar |
	avatar := MTMedia new imageMorphFrom: self object account avatar.
	avatar ifNil: [^ nil].
	avatar
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setNewImageFrom: (avatar form scaledToSize: 48).
	^ avatar