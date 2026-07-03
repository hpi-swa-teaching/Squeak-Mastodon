render
getAccountAvatarMorph

	| image form |
	form := self mastodonApi imageFormFrom: self account avatar.
	image := MTUIImageMorph new setNewImageFrom: form.
	image ifNil: [self error: 'Could not load avatar'].
	
	^ image
		width: self avatarSize;
		height: self avatarSize;
		yourself