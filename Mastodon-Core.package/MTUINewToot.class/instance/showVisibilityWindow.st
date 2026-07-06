actions
showVisibilityWindow

	| menu visibility |
	menu := self getVisibilityWindow.
	self addMorph: menu.
	
	visibility := menu getUserResponse.
	visibility isBoolean ifTrue: [^ nil].
	
	self
		visibilitySetting: visibility;
		updateQuotePolicy