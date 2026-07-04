helpers
searchFrom: aJsonObject

	^ MTSearch new
		accounts: ((aJsonObject at: 'accounts') collect: [:each | MTAccount from: each]);
		yourself