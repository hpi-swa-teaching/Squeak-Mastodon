accessing
profileLinkMorph

	self profileLink ifNil: [self headerMorph].
	^ self profileLink