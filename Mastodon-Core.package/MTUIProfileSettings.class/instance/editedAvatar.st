accessing
editedAvatar

	| form |
	^ editedAvatar ifNil: [
		form := self mastodonApi imageFormFrom: self account avatar.
		editedAvatar := MTUIImageMorph new setNewImageFrom: form]