as yet unclassified
initialize 
	
	super initialize.
	self accountMorph: OrderedCollection new.
	self cellInset: 10.
	self layoutInset: 20.
	self addSearchSection
