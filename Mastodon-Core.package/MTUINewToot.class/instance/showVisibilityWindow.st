actions
showVisibilityWindow

	| menu visibility |
	menu := self getVisibilityWindow.
	self addMorph: menu.
	
	visibility := menu getUserResponse ifNil: [^ nil].
	
	self 
		visibilitySetting: visibility;
		updateQuotePolicy.