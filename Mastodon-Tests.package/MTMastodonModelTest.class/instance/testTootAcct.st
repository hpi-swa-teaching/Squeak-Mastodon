toot
testTootAcct

	| model |
	model := MTToot new.
	
	model acct: 'schmidtflo'.
	
	self assert: model acct equals: 'schmidtflo'