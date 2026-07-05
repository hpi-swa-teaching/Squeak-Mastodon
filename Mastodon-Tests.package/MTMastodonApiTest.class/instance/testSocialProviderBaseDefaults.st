configuration
testSocialProviderBaseDefaults

	| provider |
	provider := MTSocialProvider new.
	self assert: provider displayName equals: 'Social'.
	self assert: provider characterLimit equals: 500.
	self assert: provider searchHint equals: '@User@Domain'.
	self assert: provider showsLikedPosts equals: false.
	provider retryAmount: 5.
	self assert: provider retryAmount equals: 5