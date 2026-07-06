accessing-morphs
avatarField

	^ avatarField ifNil: [avatarField := self getAvatarField]