actions
sendTootWithParameters: parameters

	self media
		ifEmpty: [self mastodonApi tootWithParameters: parameters]
		ifNotEmpty: [self tootWithImageAndParameters: parameters]