add-template
saveReplyTemplateLocally

	| replyTemplate |
	replyTemplate := MTReplyTemplate new
		title: self replyTemplateTitle contents asString;
		content: self replyTemplateTextArea contents asString;
		yourself.
	
	^ MTReplyTemplateAccess new
		user: self mastodonApi getCurrentUser value username;
		writeTemplate: replyTemplate