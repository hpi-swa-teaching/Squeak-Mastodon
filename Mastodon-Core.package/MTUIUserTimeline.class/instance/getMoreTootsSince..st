updating
getMoreTootsSince: aNumber

	self accountID ifNil: [^ {}].
	^ self mastodonApi getStatusesOf: self accountID since: aNumber