toot
replyTootImagewithVisibility: aVisibility

	| imageID json |
	json := mastodonApi uploadMediaFrom: imageMorph imageForm.
	imageID := (mastodonApi deserialize: json) at: 'id'.
	
	mastodonApi
		replyTo: replyTo id
		text: tootTextArea contents asString
		tootImageWithMedia: imageID
		withVisibility: aVisibility