render
avatarMorph

	self image: (MTMedia imageMorphFrom: self account avatar).
	self image ifNotNil: [
		self image
			vResizing: #rigid;
			hResizing: #rigid;
			setNewImageFrom: (self image form scaledToSize: 48).
		^ self image]