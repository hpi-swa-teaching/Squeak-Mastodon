updating
updateTextSize
	(self replyTemplateTextArea contents size) > 500
		ifTrue: [replyTemplateTitleSizeLabel textColor: Color red];
		ifFalse: [replyTemplateTitleSizeLabel textColor: Color black].
	self replyTemplateTitleSizeLabel contents: (replyTemplateTextArea contents size asString, '/500') asHtmlText.