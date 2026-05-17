add/remove
testRemoveAllPreferences
	MTPreferences 
		addAllPreferences;
		removeAllPreferences.
	
	self assert: (Preferences preferencesInCategory: MTPreferences defaultCategory) isEmpty
	