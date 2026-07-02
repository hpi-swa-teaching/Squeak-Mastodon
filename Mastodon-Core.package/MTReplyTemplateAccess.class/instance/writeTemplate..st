file operations
writeTemplate: aReplyTemplate

	| stream |
	aReplyTemplate title: aReplyTemplate title withBlanksTrimmed.
	(self isReplyTemplateTitleValid: aReplyTemplate) ifFalse: [^ false].
	
	self assureTemplateDirectory.
	stream := FileStream fileNamed: 'replyTemplates/', self user, '/', aReplyTemplate title.
	stream nextPutAll: aReplyTemplate content.
	stream close.
	^ true