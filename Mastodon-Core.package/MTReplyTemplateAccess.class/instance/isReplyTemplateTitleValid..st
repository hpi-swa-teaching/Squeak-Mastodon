file operations
isReplyTemplateTitleValid: aReplyTemplate

	(aReplyTemplate title includesSubstring: '/') ifTrue: [
		self inform: 'The title is not allowed to contain a "/"'.
		^ false].
	
	^ true