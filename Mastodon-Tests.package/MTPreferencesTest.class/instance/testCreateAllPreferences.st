add/remove
testCreateAllPreferences
	MTPreferences 
		removeAllPreferences;
		createAllPreferences.
		
	self preferencesAttributes do: [:each |
		| key |
		key := each first.
		self assert: (Preferences valueOfPreference: key) notNil ]