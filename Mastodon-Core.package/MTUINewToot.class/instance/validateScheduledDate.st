toot
validateScheduledDate

	| timeRes time |
	timeRes := self datePicker dateTime.
	timeRes isError ifTrue: [^ timeRes].
	time := timeRes value.
	time - self minimumScheduleingDelay < DateAndTime now ifTrue: [^ MTResult error: 'Please pick a time at least 5 minutes in the future.'].
	^ MTResult value: time