reply-template
verifyReplyTemplateContentIsWithinBounds

	| templateContentText |
	templateContentText := replyTemplateTextArea contents asString.
	templateContentText size == 0
		ifTrue: [self inform: 'Template content is not allowed to be empty.'.
			^ false].
	templateContentText size > 500
		ifTrue: [self inform: 'Not more than 500 characters allowed.'.
			^ false].
		
	^ true