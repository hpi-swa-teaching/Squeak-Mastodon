render
testGetAccountStatusesNotNil

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self assert: profileView getAccountStatuses notNil