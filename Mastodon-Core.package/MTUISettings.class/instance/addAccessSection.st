as yet unclassified
addAccessSection 
	self addMorph: (TextMorph new contents: '<b>Login/Logout</b>' asHtmlText).
	self cellInset: 10.
	self layoutInset: 20.

	self addRequestSection.