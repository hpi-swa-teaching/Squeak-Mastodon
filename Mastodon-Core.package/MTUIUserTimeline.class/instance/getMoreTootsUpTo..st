updating
getMoreTootsUpTo: aNumber

	self accountID ifNil: [^ MTResult new].
	^ self mastodonApi getStatusesOf: self accountID max: aNumber