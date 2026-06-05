render
avatarMorph

	| image |
	image := MTMedia imageMorphFrom: self user avatar.
	image ifNotNil: [
		image
			vResizing: #spaceFill;
			hResizing: #shrinkWrap;
			setNewImageFrom: (image form scaledToSize: 48).
		^ image]