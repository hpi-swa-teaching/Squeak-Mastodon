helpers
testGetInteractionTypeReplied

		| morph toot |
		toot := self mastodonApi firstTootReply.
		morph := MTUIToot for: toot.
		
		
		self assert: morph getInteractionText equals: ('&nbsp;&nbsp;replied to: @', (self mastodonApi getFederatedUsername: toot inReplyToAccountID))