reply-template
saveReplyTemplateLocally

	| localReplyTemplateAccess replyTemplate |
	replyTemplate := MTReplyTemplate new.
	replyTemplate title: replyTemplateTitle contents asString.
	replyTemplate content: replyTemplateTextArea contents asString.
	
	localReplyTemplateAccess := MTReplyTemplateAccess new.	
	localReplyTemplateAccess user: self mastodonApi username.
	localReplyTemplateAccess writeTemplate: replyTemplate.