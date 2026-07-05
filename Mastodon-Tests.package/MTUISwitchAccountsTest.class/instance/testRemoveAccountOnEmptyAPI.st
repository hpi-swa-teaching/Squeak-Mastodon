as yet unclassified
testRemoveAccountOnEmptyAPI

	| switchAccountView credential |
	switchAccountView := MTUISwitchAccounts new.
	credential := MTLoginCredentials for: MTDataProvider firstBaseURL token: MTDataProvider firstToken.
	
	self shouldnt: [switchAccountView deleteCredentials: credential] raise: Error