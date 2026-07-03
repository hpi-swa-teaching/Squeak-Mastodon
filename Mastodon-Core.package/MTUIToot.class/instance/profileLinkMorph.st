accessing
profileLinkMorph

	self profileLink ifNil: [self accountMorph].
	^ self profileLink