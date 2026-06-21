helpers
replyTo: aStatusID text: aString

	| url parameters response |
	url := self buildUrl: '/api/v1/statuses'.
	
	parameters := Dictionary newFromPairs: {'status'. aString. 'in_reply_to_id'. aStatusID asString}.
	
	response := self postRequest: url withParameters: parameters.
	
	^ response