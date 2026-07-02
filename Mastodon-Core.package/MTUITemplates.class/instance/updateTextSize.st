updating
updateTextSize

	(self replyTemplateTextArea contents size > self maxTextSize)
		ifTrue: [self replyTemplateContentSizeLabel textColor: Color red];
		ifFalse: [self replyTemplateContentSizeLabel textColor: Color black].
	self replyTemplateContentSizeLabel contents: (self replyTemplateTextArea contents size asString, '/', self maxTextSize) asHtmlText