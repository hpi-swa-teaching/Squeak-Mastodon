add/remove
removeAllPreferences
	| preferences |
	preferences := Preferences preferencesInCategory: self defaultCategory.
	preferences do: [ :preference |
		Preferences removePreference: preference name ]