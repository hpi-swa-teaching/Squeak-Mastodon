toot
scheduleToot

	| text visibility time |
	time := self validateScheduledDate.
	time ifNil: [^ false].
	self mastodonApi isAuthenticated ifFalse: [^ false].
	text := self validateTootText.
	text ifNil: [^ false].
	
	visibility := self chooseVisibility.
	
	(self scheduleToot: text at: time visibility: visibility withMedia: self getImageID) ifTrue: [
		MTUtils showSuccessMessage: 'Scheduled post successfully!' on: self messageArea.
		tootTextArea contents: ''.
		^ false].
	^ true