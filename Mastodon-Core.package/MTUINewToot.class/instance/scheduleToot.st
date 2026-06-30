toot
scheduleToot
	| text visibility time timeRes textRes |
	timeRes := self validateScheduledDate.
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
	
	(self scheduleToot: text at: time visibility: visibility withMedia: self getImageID) ifTrue: [
		MTUtils showSuccessMessage: 'Scheduled post successfully!' on: self messageArea.
		self cleanTextField.
		^ false].
	^ true