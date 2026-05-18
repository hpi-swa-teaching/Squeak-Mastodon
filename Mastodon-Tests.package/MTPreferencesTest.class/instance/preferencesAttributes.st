defaults
preferencesAttributes
	^ {
		{ #mtAccessToken . MTPreferences defaultAccessToken }.
		{ #mtBaseURL . MTPreferences defaultBaseURL }
	}