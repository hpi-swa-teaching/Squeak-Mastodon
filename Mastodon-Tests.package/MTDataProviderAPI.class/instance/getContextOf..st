endpoints
getContextOf: aTootID

	^ Dictionary new
		at: #ancestors put: {self firstTootReblogged};
		at: #descendants put: {self secondToot};
		yourself