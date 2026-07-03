helpers
testGetInteractionTextReblogged

		| morph |
		morph := MTUIToot for: self mastodonApi firstTootReblogged.
		
		
		self assert: morph getInteractionText equals: '&nbsp;&nbsp;reblogged:'