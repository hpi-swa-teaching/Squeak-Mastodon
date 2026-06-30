render
getAvatarMorph

	| imageMorph avatarURL avatarForm |
	avatarURL := self getAccount avatar ifNil: [^ nil].
	avatarForm := self mastodonApi imageFormFrom: avatarURL.
	imageMorph := (MTUIImageMorph new setNewImageFrom: avatarForm) ifNil: [^ nil].
	^ imageMorph
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setNewImageFrom: (avatarForm scaledToSize: self defaultAvatarSize);
		yourself