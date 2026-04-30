toot
tootImagewithVisibility: aVisibility
	| imageID json |
	(self mastodonApi supportsFeature: #mediaUpload)
		ifFalse: [self inform: 'Media uploads not supported.'. ^ false].
	json := mastodonApi uploadMediaFrom: imageMorph imageForm.
	imageID := (mastodonApi deserialize: json) at: 'id'.
	mastodonApi toot: (tootTextArea contents asString) withMedia: imageID withVisibility: aVisibility.