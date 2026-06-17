toot
tootImageWithParameters: aDictionary

	| imageID json |
	json := self mastodonApi uploadMediaFrom: self imageMorph imageForm.
	imageID := (self mastodonApi deserialize: json) at: 'id'.
	aDictionary at: 'media_ids[]' put: imageID.
	self mastodonApi tootWithParameters: aDictionary