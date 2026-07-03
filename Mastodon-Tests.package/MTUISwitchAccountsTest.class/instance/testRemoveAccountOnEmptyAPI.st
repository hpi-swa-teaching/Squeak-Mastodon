as yet unclassified
testRemoveAccountOnEmptyAPI

	| switchAccountView credential |
	switchAccountView := MTUISwitchAccounts new.
	credential := MTLoginCredentials for: DataProvider defaultBaseURL token: DataProvider defaultToken.
	
	self shouldnt: [switchAccountView deleteCredentials: credential] raise: Error