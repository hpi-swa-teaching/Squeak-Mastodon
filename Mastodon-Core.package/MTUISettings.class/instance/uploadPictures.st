initialization
uploadPictures
	|avatar header urls|
	self avatarImageMorph ifNotNil: [
		avatar := mastodonApi uploadMediaFrom: self avatarImageMorph].
	self headerImageMorph ifNotNil: [
	header := mastodonApi uploadMediaFrom: self headerImageMorph.].
	
	urls := Dictionary new.
	avatar ifNotNil: [ urls at: 'avatar' put: ((mastodonApi deserialize: avatar) at: 'url' )].
	header ifNotNil: [ urls at: 'header' put: ((mastodonApi deserialize: header) at: 'url')].
	
	^ urls.
	
	
	
	
	