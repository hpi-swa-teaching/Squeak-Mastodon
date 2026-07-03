render
avatarMorph

	self avatar ifNil: [
		avatar := MTMedia imageMorphFrom: self toot acct avatar.
		self avatar ifNotNil: [
			self avatar
				hResizing: #shrinkWrap;
				vResizing: #shrinkWrap;
				setNewImageFrom: (self avatar form scaledToSize: 48)]].
	^ self avatar