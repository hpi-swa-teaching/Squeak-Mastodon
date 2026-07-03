render
avatarMorph

	self avatar ifNil: [
		self avatar: (MTMedia imageMorphFrom: self toot acct avatar).
		self avatar ifNotNil: [
			self avatar
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				setNewImageFrom: (self avatar form scaledToSize: 48)]].
	^ self avatar