accessing
profileLinkMorph
	profileLink ifNil: [self headerMorph].
	^ profileLink