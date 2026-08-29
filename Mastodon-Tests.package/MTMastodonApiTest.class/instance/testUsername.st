configuration
testUsername

	| api |
	api := MTMastodonApi new.
	
	api username: 'schmidtflo'.
	
	self assert: api username equals: 'schmidtflo'