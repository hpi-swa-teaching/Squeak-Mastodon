endpoints
toot: aString withVisibility: aVisibility scheduleAt: aDateAndTime
	| url parameters response stream |
	stream := AttributedTextStream new.
	aDateAndTime printOn: stream.
	url := self buildUrl: '/api/v1/statuses'.
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility. 'scheduled_at'. stream contents}.
	response := self postRequest: url withParameters: parameters.
	
	^ MTResult value: (self class deserialize: response intoObjectOf: MTScheduledToot)