helpers
addTextPreference: aSymbol default: aValue balloonHelp: aText
	
	(self hasPreference: aSymbol) ifTrue: [ ^ nil ].
	
	Preferences
		addTextPreference: aSymbol 
		category: self defaultCategory
		default: aValue 
		balloonHelp: aText
	
	
		