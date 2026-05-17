add/remove
testAddAllPreferences
	MTPreferences 
		removeAllPreferences;
		addAllPreferences.
		
	self preferencesAttributes do: [:each |
		| key defaultValue |
		key := each first.
		defaultValue := each second. 
		self assert: (Preferences valueOfPreference: key) equals: defaultValue ].
	
	self assert: (Preferences preferencesInCategory: MTPreferences defaultCategory) size equals: self preferencesAttributes size