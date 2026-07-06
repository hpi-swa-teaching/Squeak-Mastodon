render
testGetAccountStatusesNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView getAccountStatuses] raise: Error