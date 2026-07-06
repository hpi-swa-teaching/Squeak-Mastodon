updating
getMoreTootsUpTo: aNumber

	self accountID ifNil: [^ {}].
	^ self mastodonApi getStatusesOf: self accountID max: aNumber