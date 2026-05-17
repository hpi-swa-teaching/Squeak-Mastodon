add/remove
testRemoveAllPreferencesIsIndempotent
	MTPreferences 
		createAllPreferences;
		removeAllPreferences;
		removeAllPreferences.
	
	self assert: (Preferences preferencesInCategory: MTPreferences defaultCategory) isEmpty
	