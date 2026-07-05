helpers
replyTo: aStatusID text: aString withVisibility: aVisibility scheduleAt: aDateAndTime

	| url parameters response |
	url := self buildUrl: '/api/v1/statuses'.
	
	parameters := Dictionary newFromPairs: {
		'status'.
		aString.
		'visibility'.
		aVisibility.
		'scheduled_at'.
		aDateAndTime asString.
		'in_reply_to_id'.
		aStatusID asString}.
	
	response := self postRequest: url withParameters: parameters.
	
	^ MTResult value: (self class deserialize: response intoObjectOf: MTScheduledToot)