toot
scheduleToot

	| text menu visibility time |
	time := [
		DateAndTime
			year: yearField theText asNumber
			month: monthField theText asNumber
			day: dayField theText asNumber
			hour: hourField theText asNumber
			minute: minuteField theText asNumber]
		on: Error
		do: [:err |
			self inform: 'Invalid date!'.
			^ false].
	time - self minimumScheduleingDelay < DateAndTime now ifTrue: [
		self inform: 'Please pick a time at least 5 minutes in the future.'.
		^ false].
	self mastodonApi isAuthenticated ifFalse: [^ false].
	text := tootTextArea contents asString.
	text size > 500 ifTrue: [
		self inform: 'Not more than 500 characters allowed.'.
		^ false].
	
	menu := DialogWindow new.
	menu title: 'Visibility'.
	menu createButton: 'public' value: 'public'.
	menu createButton: 'unlisted' value: 'unlisted'.
	menu createButton: 'private' value: 'private'.
	menu createButton: 'direct' value: 'direct'.
	menu createCancelButton.
	menu openInWorld.
	
	visibility := menu getUserResponse.
	[
		imageMorph
			ifNil: [mastodonApi toot: text withVisibility: visibility scheduleAt: time]
			ifNotNil: [self tootImagewithVisibility: visibility scheduleAt: time]]
		on: Error
		do: [:err |
			self inform: 'There was an API error:', String cr, err.
			^ false].
	MTUtils showSuccessMessage: 'Scheduled post successfully!' on: self messageArea.
	tootTextArea contents: ''