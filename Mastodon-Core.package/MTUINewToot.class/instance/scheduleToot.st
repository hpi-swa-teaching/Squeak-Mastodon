toot
scheduleToot

	| text menu visibility time |
	time := DateAndTime
		year: yearField theText asNumber
		month: monthField theText asNumber
		day: dayField theText asNumber
		hour: hourField theText asNumber
		minute: minuteField theText asNumber.
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
	self addMorph: menu.
	
	visibility := menu getUserResponse.
	imageMorph
		ifNil: [mastodonApi toot: text withVisibility: visibility scheduleAt: time]
		ifNotNil: [self tootImagewithVisibility: visibility scheduleAt: time].
	tootTextArea contents: ' '