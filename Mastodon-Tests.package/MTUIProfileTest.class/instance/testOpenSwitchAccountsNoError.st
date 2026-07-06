actions
testOpenSwitchAccountsNoError

	| profileView |
	profileView := self getProfileViewForFirstAccount.
	
	self shouldnt: [profileView openSwitchAccounts] raise: Error