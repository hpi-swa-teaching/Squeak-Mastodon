actions
rescheduleToot: aScheduledTootMorph

	| menu datePicker timeRes |
	datePicker := MTUIDatePicker new.
	menu := DialogWindow new
		message: 'Pick a new date and time :)';
		addPaneMorph: datePicker;
		createButton: 'Confirm' value: true;
		createCancelButton;
		openNearMorph: self.
	menu paneMorph width: 500.
	menu getUserResponse ifFalse: [^ self].
	
	timeRes := MTUtils validateScheduledDate: datePicker dateTime.
	timeRes isError ifTrue: [
		self inform: timeRes error.
		^ false].
	self mastodonApi rescheduleToot: aScheduledTootMorph toot id at: timeRes value.
	self
		loadScheduled;
		render