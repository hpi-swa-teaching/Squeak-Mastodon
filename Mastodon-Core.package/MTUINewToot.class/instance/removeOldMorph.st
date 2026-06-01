render
removeOldMorph

	self imageMorph = 'empty' ifFalse: [self removeMorph: self imageMorph].
	self imageMorph: 'empty'