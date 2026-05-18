toot
tootImagewithVisibility: aVisibility scheduleAt: aDateAndTime

	| imageID json |
	json := mastodonApi uploadMediaFrom: imageMorph imageForm.
	imageID := (mastodonApi deserialize: json) at: 'id'.
	mastodonApi
		toot: tootTextArea contents asString
		withMedia: imageID
		withVisibility: aVisibility
		scheduleAt: aDateAndTime