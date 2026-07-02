add-template
addReplyTemplate

	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self verifyReplyTemplateTitleIsWithinBounds ifFalse: [^ false].
	self verifyReplyTemplateContentIsWithinBounds ifFalse: [^ false].
	
	self saveReplyTemplateLocally ifFalse: [^ false].
	
	replyTemplateTitle contents: ''.
	replyTemplateTextArea contents: ''.
	replyTemplateContentSizeLabel contents: '0/500'.
	
	self showSuccessMessage: 'Template saved successfully'.
	
	^ true