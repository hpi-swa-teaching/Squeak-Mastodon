add/remove
testAddAllPreferencesIsIndempotent
	MTPreferences 
		removeAllPreferences;
		addAllPreferences;
		addAllPreferences.
		
	self preferencesAttributes do: [:each |
		| key defaultValue |
		key := each first.
		defaultValue := each second. 
		self assert: (Preferences valueOfPreference: key) equals: defaultValue ]