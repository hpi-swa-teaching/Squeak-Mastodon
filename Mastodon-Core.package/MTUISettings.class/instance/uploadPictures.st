initialization
uploadPictures

	| avatar header urls |
	avatar := self avatarImageMorph ifNotNil: [mastodonApi uploadMediaFrom: self avatarImageMorph].
	header := self headerImageMorph ifNotNil: [mastodonApi uploadMediaFrom: self headerImageMorph].
	
	urls := Dictionary new.
	avatar ifNotNil: [urls at: 'avatar' put: ((mastodonApi deserialize: avatar) at: 'url')].
	header ifNotNil: [urls at: 'header' put: ((mastodonApi deserialize: header) at: 'url')].
	
	^ urls