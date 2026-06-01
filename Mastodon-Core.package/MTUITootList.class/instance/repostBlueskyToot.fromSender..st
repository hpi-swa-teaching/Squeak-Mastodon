actions
repostBlueskyToot: aToot fromSender: aButton
	aButton active
		ifTrue: [
			self mastodonApi unrepost: aToot repostUri.
			aToot reblogged: false.
			aToot repostUri: ''.
			aButton active: false]
		ifFalse: [
			| result |
			result := self mastodonApi repost: aToot id cid: aToot cid.
			result isSuccess ifTrue: [
				aToot reblogged: true.
				aToot repostUri: result value.
				aButton active: true]]