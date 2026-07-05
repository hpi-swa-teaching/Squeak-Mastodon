initialization
uploadPictures

	| avatar header urls |
	avatar := self avatarImageMorph ifNotNil: [self socialProvider uploadMediaFrom: self avatarImageMorph].
	header := self headerImageMorph ifNotNil: [self socialProvider uploadMediaFrom: self headerImageMorph].
	
	urls := Dictionary new.
	avatar ifNotNil: [urls at: 'avatar' put: ((self socialProvider deserialize: avatar) at: 'url')].
	header ifNotNil: [urls at: 'header' put: ((self socialProvider deserialize: header) at: 'url')].
	
	^ urls