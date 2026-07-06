updating
getToots
	
	self accountID ifNil: [^ {}].
	^ self mastodonApi getStatusesOf: self accountID