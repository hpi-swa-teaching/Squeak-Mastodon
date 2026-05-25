updating
updateTextSize

	(self replyTemplateTextArea contents size) > 500
		ifTrue: [replyTemplateContentSizeLabel textColor: Color red];
		ifFalse: [replyTemplateContentSizeLabel textColor: Color black].
	self replyTemplateContentSizeLabel contents: (replyTemplateTextArea contents size asString, '/20') asHtmlText.