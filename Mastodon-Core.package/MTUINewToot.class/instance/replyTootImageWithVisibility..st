toot
replyTootImageWithVisibility: aVisibility

	| imageID json |
	json := self mastodonApi uploadMediaFrom: self imageMorph imageForm.
	imageID := (self mastodonApi deserialize: json) at: 'id'.
	
	self mastodonApi
		replyTo: self replyTo id
		text: self tootTextArea contents asString
		tootImageWithMedia: imageID
		withVisibility: aVisibility