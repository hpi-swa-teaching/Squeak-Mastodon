updating
updateTextSize

	(self replyTemplateTextArea contents size > self maxTextSize)
		ifTrue: [replyTemplateContentSizeLabel textColor: Color red];
		ifFalse: [replyTemplateContentSizeLabel textColor: Color black].
	self replyTemplateContentSizeLabel contents: (replyTemplateTextArea contents size asString, '/', self maxTextSize) asHtmlText