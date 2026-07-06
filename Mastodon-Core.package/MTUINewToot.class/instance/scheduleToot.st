toot
scheduleToot

	| text visibility time timeRes textRes |
	timeRes := MTUtils validateScheduledDate: self datePicker dateTime.
	timeRes isError ifTrue: [
		self inform: timeRes error.
		^ false].
	time := timeRes value.
	self mastodonApi isAuthenticated ifFalse: [^ false].
	textRes := self validateTootText.
	textRes isError ifTrue: [
		self inform: textRes error.
		^ false].
	text := textRes value.
	
	visibility := self chooseVisibility.
	
	(self replyTo
		ifNil: [self scheduleToot: text at: time visibility: visibility withMedia: self getImageID]
		ifNotNil: [
			self
				scheduleReplyToot: text
				replyTo: self replyTo id
				at: time
				visibility: visibility
				withMedia: self getImageID]) ifTrue: [
		MTUtils showSuccessMessage: 'Scheduled post successfully!' on: self messageArea.
		self cleanTextField.
		
		self replyTo ifNotNil: [self owner delete].
		^ false].
	^ true