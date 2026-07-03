add-template
addReplyTemplate

	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self verifyReplyTemplateTitleIsWithinBounds ifFalse: [^ false].
	self verifyReplyTemplateContentIsWithinBounds ifFalse: [^ false].
	
	self saveReplyTemplateLocally ifFalse: [^ false].
	
	self replyTemplateTitle contents: ''.
	self replyTemplateTextArea contents: ''.
	self replyTemplateContentSizeLabel contents: '0/', self maxTextSize.
	
	MTUtils showSuccessMessage: 'Template saved successfully' on: self.
	
	^ true