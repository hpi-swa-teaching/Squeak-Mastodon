render
testGetAccountStatusesResultInExpectedAmount
	
	| profileView accountStatuses expectedStatuses |
	profileView := self getProfileViewForFirstAccount.

	accountStatuses := profileView getAccountStatuses.
	expectedStatuses := self mastodonApi getStatusesOf: self mastodonApi getCurrentUser id.

	self assert: accountStatuses amountOfLoadedStatuses equals: expectedStatuses size