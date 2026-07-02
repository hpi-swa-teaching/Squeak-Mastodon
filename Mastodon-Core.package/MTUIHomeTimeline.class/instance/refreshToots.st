updating
refreshToots

	(self mastodonApi isKindOf: MTBlueSkyApi) ifFalse: [
		self mastodonApi token isNil ifTrue: [^ self loadPublicToots].
		^ super refreshToots].
	^ false