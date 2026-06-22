accessing
profileMorph

	^ profileMorph ifNil: [profileMorph := self getProfileContainer]