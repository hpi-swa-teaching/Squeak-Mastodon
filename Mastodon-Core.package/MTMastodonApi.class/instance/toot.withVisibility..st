endpoints
toot: aString withVisibility: aVisibility

	| url parameters response |
	url := self buildUrl: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility}.
	response := self postRequest: url withParameters: parameters.
	^ MTResult value: (self class deserialize: response intoObjectOf: MTToot)