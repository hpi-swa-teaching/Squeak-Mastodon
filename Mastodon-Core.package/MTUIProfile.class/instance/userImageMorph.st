render
userImageMorph

	| image |
	image := MTMedia imageMorphFrom: self user avatar.
	image ifNotNil: [
		image
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			setNewImageFrom: (image form scaledToSize: 200)].
	
	^ image