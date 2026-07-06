helpers
testGetInteractionTextReblogged

		| morph |
		morph := MTUIToot for: MTDataProvider secondTootReblogged.
		
		self assert: morph getInteractionText equals: '&nbsp;&nbsp;reblogged:'