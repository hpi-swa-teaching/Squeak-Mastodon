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
	
	imageMorph
		ifNil: [
			replyTo
				ifNil: [mastodonApi toot: text withVisibility: visibility]
				ifNotNil: [mastodonApi replyTo: replyTo id text: text]]
		ifNotNil: [
			replyTo
				ifNil: [self tootImagewithVisibility: visibility]
				ifNotNil: [self replyTootImagewithVisibility: visibility]].
	
	replyTo ifNil: [tootTextArea contents: ' '] ifNotNil: [self owner delete].
	
	self reloadMentionTimeline ifTrue: [self mtuiWindow loadMentionTimelineView].
	self cleanTextField.
	MTUtils showSuccessMessage: 'Toot posted successfully!' on: self messageArea