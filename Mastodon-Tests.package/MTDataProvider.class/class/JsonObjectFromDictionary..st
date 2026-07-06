helpers
JsonObjectFromDictionary: aDictionary

	^ self JsonObjectFromJsonString: (self JsonStringFromDictionary: aDictionary)