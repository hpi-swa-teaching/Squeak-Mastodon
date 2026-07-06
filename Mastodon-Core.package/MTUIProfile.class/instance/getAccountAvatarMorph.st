render
getAccountAvatarMorph

	| image form |
	form := self mastodonApi imageFormFrom: self account avatar.
	image := (MTUIImageMorph new setNewImageFrom: form size: self avatarSize) ifNil: [self error: 'Could not load avatar'].
	^ image