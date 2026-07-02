accessing
profileLinkMorph

	profileLink ifNil: [self accountMorph].
	^ profileLink