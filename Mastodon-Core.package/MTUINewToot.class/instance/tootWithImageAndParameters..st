actions
tootWithImageAndParameters: aDictionary

	| imageID json |
	self media do: [:image |
		json := self mastodonApi uploadMediaFrom: image.
		imageID := (self mastodonApi deserialize: json) at: 'id'.
		aDictionary add: 'media_ids[]' -> imageID asString].
	
	self mastodonApi tootWithParameters: aDictionary