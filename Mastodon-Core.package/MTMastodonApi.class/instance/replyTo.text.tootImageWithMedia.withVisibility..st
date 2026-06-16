endpoints
replyTo: aStatusID text: aString tootImageWithMedia: aMediaID withVisibility: aVisibility

	| url parameters response |
	url := self buildUrl: '/api/v1/statuses'.
	
	parameters := Dictionary newFromPairs: {'status'. aString. 'visibility'. aVisibility. 'media_ids[]'. aMediaID. 'in_reply_to_id'. aStatusID asString}.
	
	response := self postRequest: url withParameters: parameters.
	
	^ response