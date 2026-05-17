helpers
hasPreference: aSymbol
	^ (Preferences preferenceAt: aSymbol ifAbsent: [ nil ]) notNil