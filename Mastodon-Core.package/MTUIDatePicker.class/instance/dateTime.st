accessing
dateTime

	^ [
		MTResult value: (DateAndTime
			year: self yearField theText asNumber
			month: self monthField theText asNumber
			day: self dayField theText asNumber
			hour: self hourField theText asNumber
			minute: self minuteField theText asNumber)]
		on: Error
		do: [:err | MTResult error: 'Invalid date!']