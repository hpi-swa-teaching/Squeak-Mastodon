accessing
account

	^ account ifNil: [account := self mastodonApi getCurrentUser]