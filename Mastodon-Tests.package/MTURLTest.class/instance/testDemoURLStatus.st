as yet unclassified
testDemoURLStatus
	| mastodonApi |
	mastodonApi := MTMastodonApi new.
	self assert: (mastodonApi getRequest: 'https://status.mastodon.social/v3/summary.json' ) isNil not.