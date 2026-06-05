helper
validateScheduledDate: dateTimeRes

	dateTimeRes isError ifTrue: [^ dateTimeRes].
	(MTMastodonApi isScheduledPostTimeValid: dateTimeRes value) ifTrue: [^ MTResult error: 'Please pick a date at least 5 minutes in the future'].
	
	^ MTResult value: (dateTimeRes value asString)