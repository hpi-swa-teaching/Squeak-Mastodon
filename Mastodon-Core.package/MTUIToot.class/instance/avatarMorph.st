render
avatarMorph

	| image |
	image := MTMedia imageMorphFrom: self toot account avatar.
	image ifNotNil: [
		image
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (image form scaledToSize: 48).
		^ image]