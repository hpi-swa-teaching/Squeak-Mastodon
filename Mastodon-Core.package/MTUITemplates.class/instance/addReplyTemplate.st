add-template
addReplyTemplate

	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self verifyReplyTemplateTitleIsWithinBounds
		ifFalse: [^ false.].
	self verifyReplyTemplateContentIsWithinBounds
		ifFalse: [^ false.].
		
	self saveReplyTemplateLocally ifFalse: [^ false].
	
	replyTemplateTitle contents: ''.
	replyTemplateTextArea contents: ''.
	
	self showSuccessMessage: 'Template saved successfully'.

	^ true