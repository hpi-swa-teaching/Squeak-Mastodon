action
directTootWithId: anInteger fromSender: aButton
	(self mastodonApi supportsFeature: #post)
		ifFalse: [self inform: 'Posting not supported.'. ^ false].
	MTUIWindow instance loadNewTootViewWithAccount: anInteger