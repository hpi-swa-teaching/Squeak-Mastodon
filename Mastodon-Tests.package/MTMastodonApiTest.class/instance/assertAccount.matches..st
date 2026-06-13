helpers
assertAccount: anAccount matches: aDictionary

	self assert: anAccount id equals: (aDictionary at: 'id').
	self assert: anAccount username equals: (aDictionary at: 'username').
	self assert: anAccount federatedUsername equals: (aDictionary at: 'acct').
	self assert: anAccount displayName equals: (aDictionary at: 'display_name').
	self assert: anAccount createdAt equals: (aDictionary at: 'created_at').
	self assert: anAccount followersCount equals: (aDictionary at: 'followers_count').
	self assert: anAccount followingCount equals: (aDictionary at: 'following_count').
	self assert: anAccount statusesCount equals: (aDictionary at: 'statuses_count').
	self assert: anAccount note equals: (aDictionary at: 'note').
	self assert: anAccount url equals: (aDictionary at: 'url').
	self assert: anAccount avatar equals: (aDictionary at: 'avatar').
	self assert: anAccount header equals: (aDictionary at: 'header')