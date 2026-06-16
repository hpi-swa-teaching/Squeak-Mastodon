helpers
avatarMorphFor: credentials

	| account avatar |
	account := self accountFor: credentials.
	account ifNil: [^ self defaultAvatarMorph].
	
	avatar := account avatar.
	avatar ifNil: [^ self defaultAvatarMorph].
	
	^ (self getAvatarImage) ifNil: [self defaultAvatarMorph] ifNotNil: [:morph |
		morph
			extent: 50 @ 50;
			yourself]