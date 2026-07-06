json-search
secondSearchResultJson

	^ JsonObject new
		at: 'accounts' put: {self firstAccountJson. self secondAccountJson};
		yourself