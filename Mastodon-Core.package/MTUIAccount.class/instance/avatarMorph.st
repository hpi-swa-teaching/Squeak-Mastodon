render
avatarMorph

	self image ifNil: [
		self image: (MTMedia imageMorphFrom: self account avatar).
		self image ifNotNil: [
			self image
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				setNewImageFrom: (self image form scaledToSize: MTUIImageMorph avatarSize)]].
	^ self image