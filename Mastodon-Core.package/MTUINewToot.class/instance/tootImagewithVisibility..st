toot
tootImagewithVisibility: aVisibility

	| imageID json |
	json := mastodonApi uploadMediaFrom: self imageMorph imageForm.
	imageID := (mastodonApi deserialize: json) at: 'id'.
	mastodonApi toot: self tootTextArea contents asString withMedia: imageID withVisibility: aVisibility