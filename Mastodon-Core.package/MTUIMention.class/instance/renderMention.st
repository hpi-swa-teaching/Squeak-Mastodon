as yet unclassified
renderMention
	
	| repliedIDs |
	repliedIDs := ((self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value
		select: [:toot | toot notNil and: [toot inReplyToID notNil]]
		thenCollect: [:toot | toot inReplyToID asString]) asSet.
	
	self mention do: [:mention |
		(mention status notNil and: [(repliedIDs includes: mention status id asString) not]) ifTrue: [ | tootMorph |
			tootMorph := MTUIToot new toot: mention status.
			tootMorph showArchiveButton: true.
			tootMorph render.
			
			"tootMorph replyButton
				target: self;
				actionSelector: #replyTootWithId:fromSender:;
				arguments: (Array with: mention status id with: tootMorph replyButton).
			
			tootMorph archiveButton
				target: self;
				actionSelector: #archiveTootWithId:fromSender:;
				arguments: (Array with: mention status id with: tootMorph archiveButton).
			
			spacingMorph := Morph new
				color: Color veryVeryLightGray;
				height: 1;
				hResizing: #spaceFill;
				yourself."
			
			self addMorphBack: tootMorph.
			"self addMentionMorph: tootMorph"]]