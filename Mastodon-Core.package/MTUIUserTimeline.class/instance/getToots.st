updating
getToots
	
	self accountID ifNil: [^ MTResult new].
	^ self mastodonApi getStatusesOf: self accountID