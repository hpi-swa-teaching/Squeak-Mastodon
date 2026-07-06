json-search
emptySearchResultJson

	^ JsonObject new
		at: 'accounts' put: {};
		yourself