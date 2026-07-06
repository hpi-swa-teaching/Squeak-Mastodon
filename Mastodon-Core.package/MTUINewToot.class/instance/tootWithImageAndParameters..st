actions
tootWithImageAndParameters: aDictionary

	| parameters mediaAttachment |
	parameters := OrderedCollection withAll: aDictionary associations.
	self media do: [:image |
		mediaAttachment := self mastodonApi uploadMediaFrom: image.
		parameters add: 'media_ids[]' -> mediaAttachment id asString].
	
	self mastodonApi tootWithParameters: parameters