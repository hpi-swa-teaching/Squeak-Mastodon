render
avatarMorph

	avatarMorph ifNotNil: [^ avatarMorph].
	avatarMorph := MTMedia imageMorphFrom: self account avatar.
	avatarMorph ifNil: [^ nil].
	avatarMorph
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setNewImageFrom: (avatarMorph form scaledToSize: 48).
	^ avatarMorph