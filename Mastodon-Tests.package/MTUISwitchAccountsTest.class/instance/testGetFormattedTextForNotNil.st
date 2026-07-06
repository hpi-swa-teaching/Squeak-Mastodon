helpers
testGetFormattedTextForNotNil

	| switchAccountsView |
	switchAccountsView := MTUISwitchAccounts new.

	self assert: (switchAccountsView getFormattedTextFor: MTDataProvider firstAccountCredentials) notNil