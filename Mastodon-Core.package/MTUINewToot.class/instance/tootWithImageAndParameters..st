actions
tootWithImageAndParameters: aDictionary

	| mediaAttachment |
	self media do: [:image |
		mediaAttachment := self mastodonApi uploadMediaFrom: image.
		aDictionary at: 'media_ids[]' put: mediaAttachment id asString].
	
	self mastodonApi tootWithParameters: aDictionary