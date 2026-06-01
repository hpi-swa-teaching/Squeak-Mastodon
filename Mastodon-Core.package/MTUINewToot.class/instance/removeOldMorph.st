render
removeOldMorph

	imageMorph = 'empty' ifFalse: [self removeMorph: imageMorph].
	self imageMorph: 'empty'