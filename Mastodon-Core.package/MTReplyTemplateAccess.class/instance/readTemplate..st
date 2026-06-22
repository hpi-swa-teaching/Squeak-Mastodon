file operations
readTemplate: aTemplateFile
	| stream template |
	stream := aTemplateFile readStream.
	template := MTReplyTemplate new
		title: aTemplateFile baseName;
		content: stream contents;
		yourself.
	stream close.
	^ template