endpoints
toot: aString withMedia: aMediaID withVisibility: aVisibility scheduleAt: aDateAndTime

	| url parameters |
	url := self buildUrl: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility. 'media_ids[]'. aMediaID. 'scheduled_at'. aDateAndTime asString}.
	^ self postRequest: url withParameters: parameters