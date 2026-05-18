add/remove
testCreateAllPreferencesIsIndempotentNoDuplicates
	MTPreferences 
		removeAllPreferences;
		createAllPreferences;
		createAllPreferences.
		
	self assert: (Preferences preferencesInCategory: MTPreferences defaultCategory) size equals: self preferencesAttributes size 