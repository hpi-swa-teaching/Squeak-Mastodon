updating
getMoreTootsSince: aNumber

	self accountID ifNil: [^ MTResult new].
	^ self mastodonApi getStatusesOf: self accountID since: aNumber