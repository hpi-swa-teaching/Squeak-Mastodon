toot
validateScheduledDate
	| time |
	time := [
		DateAndTime
			year: yearField theText asNumber
			month: monthField theText asNumber
			day: dayField theText asNumber
			hour: hourField theText asNumber
			minute: minuteField theText asNumber]
		on: Error
		do: [:err | ^ MTResult error: 'Invalid date!'].
	time - self minimumScheduleingDelay < DateAndTime now ifTrue: [^ MTResult error: 'Please pick a time at least 5 minutes in the future.'].
	^ MTResult value: time