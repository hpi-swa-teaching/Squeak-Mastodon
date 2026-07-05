updating
updateVisibilityButton

	| displayText |
	displayText := self visibilityTranslations
		at: self visibilitySetting
		ifAbsent: [self error: 'No valid visibility setting selected.'].
	
	self visibilityButton text: self visibilityButtonText, displayText