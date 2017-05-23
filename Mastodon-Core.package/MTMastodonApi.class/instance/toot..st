endpoints
toot: aString
	| url parameters |
	url := self baseURL, '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString}.
	^ self postRequest: url params: parameters.