json-context
firstContextJson

	^ JsonObject new
		at: 'ancestors' put: {self firstTootJson};
		at: 'descendants' put: {self secondTootJson};
		yourself