file operations
writeTemplate: aReplyTemplate
	| stream |
	self assureTemplateDirectory. 
	stream := FileStream newFileNamed: 'replyTemplates/', self user, aReplyTemplate title.
	stream nextPutAll:	aReplyTemplate content.
	stream close.