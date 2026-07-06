actions
testDeleteCredentialsOnEmptyAPI

	| switchAccountView |
	switchAccountView := MTUISwitchAccounts new.
	
	self shouldnt: [switchAccountView deleteCredentials: MTDataProvider firstAccountCredentials] raise: Error