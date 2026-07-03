helpers
testGetInteractionTextNormal

		| morph |
		morph := MTUIToot for: self mastodonApi firstToot.
		
		
		self assert: morph getInteractionText equals: ''