helpers
testGetFormattedTextForContainsDisplayName

	| switchAccountsView formattedText |
	switchAccountsView := MTUISwitchAccounts new.
	
	formattedText := switchAccountsView getFormattedTextFor: MTDataProvider firstAccountCredentials.
	
	self assert: (formattedText asString includesSubstring: MTDataProvider firstAccount displayName)