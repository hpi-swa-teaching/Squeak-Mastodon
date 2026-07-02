toot
toot

	| textRes text visibility |
	self mastodonApi isAuthenticated ifFalse: [^ false].
	textRes := self validateTootText.
	textRes isError ifTrue: [
		self inform: textRes error.
		^ false].
	text := textRes value.
	
	visibility := self chooseVisibility.
	
	self imageMorph
		ifNil: [
			self replyTo
				ifNil: [self mastodonApi toot: text withVisibility: visibility]
				ifNotNil: [self mastodonApi replyTo: self replyTo id text: text]]
		ifNotNil: [
			self replyTo
				ifNil: [self tootImagewithVisibility: visibility]
				ifNotNil: [self replyTootImagewithVisibility: visibility]].
	
	self replyTo ifNil: [self tootTextArea contents: ' '] ifNotNil: [self owner delete].
	
	self reloadMentionTimeline ifTrue: [self mtuiWindow loadMentionTimelineView].
	self cleanTextField.
	MTUtils showSuccessMessage: 'Toot posted successfully!' on: self messageArea