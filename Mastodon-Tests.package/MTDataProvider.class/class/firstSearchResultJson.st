json-search
firstSearchResultJson

	^ JsonObject new
		at: 'accounts' put: {self firstAccountJson};
		yourself