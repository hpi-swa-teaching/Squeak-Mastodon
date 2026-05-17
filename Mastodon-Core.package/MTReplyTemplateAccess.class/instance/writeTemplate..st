file operations
writeTemplate: aReplyTemplate
	| stream |
	self assureTemplateDirectory.
	(self templateExists: aReplyTemplate title) ifTrue: [^ false].
	stream := FileStream newFileNamed: 'replyTemplates/', self user, '/', aReplyTemplate title.
	stream nextPutAll:	aReplyTemplate content.
	stream close.