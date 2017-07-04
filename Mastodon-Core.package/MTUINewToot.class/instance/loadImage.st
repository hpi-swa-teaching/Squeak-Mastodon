as yet unclassified
loadImage
	| file imageID json |
	self mastodonApi isAuthenticated 
	ifFalse: [self inform: 'Please login first.'. 
			^ false].
	
	file := self selectPicture.
	json := mastodonApi uploadMediaFrom: (Form fromFileNamed: file).
	imageID := (mastodonApi deserialize: json) at: 'id'.
	mastodonApi toot: (tootTextArea contents asString) withMedia: imageID.
	tootTextArea contents: ' '.