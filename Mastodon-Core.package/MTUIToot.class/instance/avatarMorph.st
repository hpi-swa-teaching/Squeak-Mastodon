render
avatarMorph
	image := MTMedia imageMorphFrom: self toot acct avatar.
	(image isNil or: [image form isNil]) ifTrue: [^ Morph new extent: 48@48; color: Color gray].
	image
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image