as yet unclassified
initialize

	super initialize.
	
	self mentionMorphs: OrderedCollection new.
	
	self cellInset: 10.
	self layoutInset: 20.
	
	self addMentionSection