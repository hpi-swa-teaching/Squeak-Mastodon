as yet unclassified
addLoginSection 
	self addMorph: (TextMorph new contents: '<b>Login</b>' asHtmlText).
	self cellInset: 10.
	self layoutInset: 20.
	
	self addRequestPinSection.
	self addPinSection.
	self addPinResultSection.