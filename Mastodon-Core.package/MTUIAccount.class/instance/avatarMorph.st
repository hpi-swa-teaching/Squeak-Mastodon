render
avatarMorph

	self image: (MTMedia imageMorphFrom: self account avatar).
	self image ifNotNil: [
		self image
			vResizing: #spaceFill;
			hResizing: #shrinkWrap;
			setNewImageFrom: (self image form scaledToSize: 48).
		^ self image]