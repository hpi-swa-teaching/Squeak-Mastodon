render
showQuotePolicyWindow

	| menu response |
	menu := self getQuotePolicyWindow.
	self addMorph: menu.
	
	response := menu getUserResponse.
	response ifTrue: [self quotePolicySetting: response].
	
	^ response