add/remove
testRemoveAllPreferencesIsIndempotent
	MTPreferences 
		addAllPreferences;
		removeAllPreferences;
		removeAllPreferences.
	
	self assert: (Preferences preferencesInCategory: MTPreferences defaultCategory) isEmpty
	