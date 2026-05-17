reply-template
saveReplyTemplateLocally
	
	| replyTemplate |
	replyTemplate := MTReplyTemplate new
		title: replyTemplateTitle contents asString;
		content: replyTemplateTextArea contents asString;
		yourself.
	
	^ MTReplyTemplateAccess new	
		user: self mastodonApi getCurrentUser value username;
		writeTemplate: replyTemplate.