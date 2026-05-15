reply-template
replyTemplate
	
	self mastodonApi isAuthenticated ifFalse: [^false].
	
	self verifyReplyTemplateTitleIsWithinBounds
		ifFalse: [^ false.].
	self verifyReplyTemplateContentIsWithinBounds
		ifFalse: [^ false.].
		
	self saveReplyTemplateLocally.
	
	replyTemplateTitle contents: ''.
	replyTemplateTextArea contents: ''.
	
	self showSuccessMessage.

	^ true