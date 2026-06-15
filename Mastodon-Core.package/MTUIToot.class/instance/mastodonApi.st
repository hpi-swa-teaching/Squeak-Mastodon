as yet unclassified
mastodonApi

	(self owner isKindOf: MTUITootList)
		ifTrue: [^ self owner mastodonApi]
		ifFalse: [^ self owner owner mastodonApi]