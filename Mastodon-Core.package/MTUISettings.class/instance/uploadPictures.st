initialization
uploadPictures

	| avatar header urls |
	avatar := self avatarImageMorph ifNotNil: [self mastodonApi uploadMediaFrom: self avatarImageMorph].
	header := self headerImageMorph ifNotNil: [self mastodonApi uploadMediaFrom: self headerImageMorph].
	
	urls := Dictionary new.
	avatar ifNotNil: [urls at: 'avatar' put: ((self mastodonApi deserialize: avatar) at: 'url')].
	header ifNotNil: [urls at: 'header' put: ((self mastodonApi deserialize: header) at: 'url')].
	
	^ urls