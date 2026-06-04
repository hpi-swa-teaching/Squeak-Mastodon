time-conversion
validateScheduledDate: dateTimeRes

	| timeRes |
	timeRes := dateTimeRes.
	timeRes isError ifTrue: [^ timeRes].
	(MTMastodonApi isScheduledPostTimeValid: timeRes value) ifTrue: [^ MTResult error: 'Please pick a date at least 5 minutes in the future'].
	
	^ MTResult value: (MTUIDatePicker format: dateTimeRes)