render
getAvatarMorph

	| avatar |
	avatar := MTMedia new imageMorphFrom: self object avatar.
	avatar ifNotNil: [
		avatar
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (avatar form scaledToSize: 48).
		^ avatar]