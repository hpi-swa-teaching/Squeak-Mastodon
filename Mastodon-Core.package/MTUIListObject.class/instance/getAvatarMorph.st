render
getAvatarMorph

	| avatar |
	avatar := MTMedia new imageMorphFrom: (self getAccount avatar ifNil: [^ nil]).
	avatar ifNotNil: [
		avatar
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (avatar form scaledToSize: self defaultAvatarSize).
		^ avatar]