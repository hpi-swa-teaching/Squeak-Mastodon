edit-template
editReplyTemplate

	| userTemplates replyTemplateAccess selectedTemplate selectedReplyTemplate |
	replyTemplateAccess := MTReplyTemplateAccess new.
	replyTemplateAccess user: self mastodonApi getCurrentUser value username.
	userTemplates := replyTemplateAccess templateDirectoryContent.
	
	selectedTemplate := self chooseTemplate: userTemplates.
	selectedTemplate = false ifTrue: [^ self].
	selectedReplyTemplate := replyTemplateAccess readTemplate: selectedTemplate.
	
	self replyTemplateTextArea contents: selectedReplyTemplate content.
	self replyTemplateTitle contents: selectedReplyTemplate title