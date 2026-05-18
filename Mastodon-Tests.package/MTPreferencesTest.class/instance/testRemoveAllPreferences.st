add/remove
testRemoveAllPreferences
	MTPreferences 
		createAllPreferences;
		removeAllPreferences.
	
	self assert: (Preferences preferencesInCategory: MTPreferences defaultCategory) isEmpty
	