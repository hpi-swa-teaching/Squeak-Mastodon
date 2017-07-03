as yet unclassified
tootImage
	| file imageID json |
	self mastodonApi isAuthenticated 
	ifFalse: [self inform: 'Please login first.'. 
			^ false].
	
	file := imageTextArea contents asString.
	json := mastodonApi uploadMediaFrom: (Form fromFileNamed: file).
	imageID := (mastodonApi deserialize: json) at: 'id'.
	self halt.
	mastodonApi toot: (tootTextArea contents asString) withMedia: imageID.
	tootTextArea contents: ''.