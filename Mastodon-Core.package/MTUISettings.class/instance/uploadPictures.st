initialization
uploadPictures

	| avatar header urls |
	self avatarImageMorph ifNotNil: [avatar := self mastodonApi uploadMediaFrom: self avatarImageMorph].
	self headerImageMorph ifNotNil: [header := self mastodonApi uploadMediaFrom: self headerImageMorph].
	
	urls := Dictionary new.
	avatar ifNotNil: [urls at: 'avatar' put: ((self mastodonApi deserialize: avatar) at: 'url')].
	header ifNotNil: [urls at: 'header' put: ((self mastodonApi deserialize: header) at: 'url')].
	
	^ urls