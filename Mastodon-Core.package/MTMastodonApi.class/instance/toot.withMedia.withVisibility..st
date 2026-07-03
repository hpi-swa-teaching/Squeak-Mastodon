endpoints
toot: aString withMedia: aMediaID withVisibility: aVisibility

	| url parameters |
	url := self buildUrl: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility. 'media_ids[]'. aMediaID}.
	self postRequest: url withParameters: parameters.