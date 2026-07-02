render
avatarMorph

	image ifNil: [
		image := MTMedia imageMorphFrom: self account avatar.
		image ifNotNil: [
			image
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				setNewImageFrom: (image form scaledToSize: 48)]].
	^ image