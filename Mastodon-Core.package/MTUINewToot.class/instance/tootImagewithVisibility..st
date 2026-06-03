toot
tootImagewithVisibility: aVisibility

	| imageID json |
	json := self mastodonApi uploadMediaFrom: self imageMorph imageForm.
	imageID := (self mastodonApi deserialize: json) at: 'id'.
	self mastodonApi toot: self tootTextArea contents asString withMedia: imageID withVisibility: aVisibility