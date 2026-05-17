add/remove
testCreateAllPreferencesIsIndempotent
	MTPreferences 
		removeAllPreferences;
		createAllPreferences;
		createAllPreferences.
		
	self preferencesAttributes do: [:each |
		| key defaultValue |
		key := each first.
		defaultValue := each second.
		self assert: (Preferences valueOfPreference: key) equals: defaultValue ]