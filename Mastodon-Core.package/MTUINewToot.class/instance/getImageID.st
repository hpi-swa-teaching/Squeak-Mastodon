toot
getImageID

	| imageID json |
	imageMorph ifNil: [^ nil].
	json := mastodonApi uploadMediaFrom: imageMorph imageForm.
	imageID := (mastodonApi deserialize: json) at: 'id'.
	^ imageID