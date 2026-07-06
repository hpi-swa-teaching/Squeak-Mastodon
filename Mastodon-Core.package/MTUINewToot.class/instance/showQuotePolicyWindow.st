actions
showQuotePolicyWindow

	| menu response |
	menu := self getQuotePolicyWindow.
	self addMorph: menu.
	
	response := menu getUserResponse.
	response isBoolean ifTrue: [^ nil].
	
	^self quotePolicySetting: response