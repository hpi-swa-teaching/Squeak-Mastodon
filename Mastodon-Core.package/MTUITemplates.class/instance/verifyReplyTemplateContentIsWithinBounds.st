add-template
verifyReplyTemplateContentIsWithinBounds

	| templateContentText |
	templateContentText := self replyTemplateTextArea contents asString.
	templateContentText size == 0 ifTrue: [
		self inform: 'Template content is not allowed to be empty.'.
		^ false].
	templateContentText size > self maxTextSize ifTrue: [
		self inform: 'Not more than ', self maxTextSize, ' characters allowed.'.
		^ false].
	
	^ true