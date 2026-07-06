render
getAvatarMorph

	| imageMorph avatarURL avatarForm |
	avatarURL := self getAccount avatar ifNil: [^ nil].
	avatarForm := self mastodonApi imageFormFrom: avatarURL.
	imageMorph := (MTUIImageMorph new setNewImageFrom: avatarForm size: self defaultAvatarSize) ifNil: [^ nil].
	^ imageMorph
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		yourself