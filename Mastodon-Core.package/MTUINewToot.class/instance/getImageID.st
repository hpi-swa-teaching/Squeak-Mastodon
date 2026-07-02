toot
getImageID

	| imageID json |
	self imageMorph ifNil: [^ nil].
	json := self mastodonApi uploadMediaFrom: self imageMorph imageForm.
	imageID := (self mastodonApi deserialize: json) at: 'id'.
	^ imageID