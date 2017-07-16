as yet unclassified
tootImagewithVisibility: aVisibility
	| imageID json |
	json := mastodonApi uploadMediaFrom: imageMorph imageForm.
	imageID := (mastodonApi deserialize: json) at: 'id'.
	mastodonApi toot: (tootTextArea contents asString) withMedia: imageID withVisibility: aVisibility.