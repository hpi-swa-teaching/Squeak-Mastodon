reply-template
replyTemplate
	
	self mastodonApi isAuthenticated ifFalse: [^ false].
	
	self verifyReplyTemplateTitleIsWithinBounds
		ifFalse: [^ false.].
	self verifyReplyTemplateContentIsWithinBounds
		ifFalse: [^ false.].
		
	self saveReplyTemplateLocally ifFalse: [self inform: 'A template with this name already exits'.
		^ false].
	
	replyTemplateTitle contents: ''.
	replyTemplateTextArea contents: ''.
	
	self showSuccessMessage.

	^ true