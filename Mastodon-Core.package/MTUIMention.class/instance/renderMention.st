as yet unclassified
renderMention

	| repliedIDs |
	self mentionMorphs do: [:morph |
		self removeMorph: morph.
		morph delete].
	
	self mentionMorphs: OrderedCollection new.
	
	repliedIDs := ((self mastodonApi getStatuses: self mastodonApi getCurrentUser value id) value
		select: [:toot | toot notNil and: [toot inReplyToID notNil]]
		thenCollect: [:toot | toot inReplyToID asString]) asSet.
	
	self mention do: [:mention |
		(mention status notNil
			and: [(repliedIDs includes: mention status id asString) not]
			and: [(self isArchived: mention status id) not]) ifTrue: [ | tootMorph |
			tootMorph := MTUIToot new toot: mention status.
			tootMorph showArchiveButton: true.
			
			tootMorph render.
			
			tootMorph archiveButton
				target: self;
				actionSelector: #archiveTootWithId:fromSender:;
				arguments: (Array with: mention status id with: tootMorph archiveButton).
			
			self addMorphBack: tootMorph.
			self addMentionMorph: tootMorph.
			
			]]