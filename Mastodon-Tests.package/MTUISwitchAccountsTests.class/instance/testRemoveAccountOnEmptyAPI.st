as yet unclassified
testRemoveAccountOnEmptyAPI

	| switchAccountView credential |
	switchAccountView := MTUISwitchAccounts new.
	credential := MTLoginCredentials for: MTDataProvider defaultBaseURL token: MTDataProvider defaultToken.
	
	self shouldnt: [switchAccountView deleteCredentials: credential] raise: Error