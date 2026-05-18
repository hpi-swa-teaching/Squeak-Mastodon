as yet unclassified
renderMention

	"self mentionMorphs do: [:morph |
		self removeMorph: morph.
		morph delete].
	
	self mentionMorphs: OrderedCollection new."
	
	self mention do: [:mention |
		mention status ifNotNil: [ | tootMorph |
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
			self addMentionMorph: tootMorph.
			]]