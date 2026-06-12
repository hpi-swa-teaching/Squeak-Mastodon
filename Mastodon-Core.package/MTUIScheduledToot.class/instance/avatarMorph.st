render
avatarMorph

	| image |
	image := MTMedia imageMorphFrom: self user avatar.
	image ifNotNil: [
		image
			vResizing: #rigid;
			hResizing: #rigid;
			setNewImageFrom: (image form scaledToSize: 48).
		^ image]