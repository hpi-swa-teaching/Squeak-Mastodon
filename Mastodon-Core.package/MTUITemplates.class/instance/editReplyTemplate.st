edit-template
editReplyTemplate

	| userTemplates replyTemplateAccess selectedTemplate selectedReplyTemplate |
	replyTemplateAccess := MTReplyTemplateAccess new.
	replyTemplateAccess user: self mastodonApi getCurrentUser value username.
	userTemplates := replyTemplateAccess templateDirectoryContent.
	
	selectedTemplate := self chooseTemplate: userTemplates.
	selectedTemplate = false ifTrue: [^ self].
	selectedReplyTemplate := replyTemplateAccess readTemplate: selectedTemplate.
	
	MTUtils showSuccessMessage: 'Template deleted successfully' on: self.
	self replyTemplateTextArea contents: selectedReplyTemplate content.
	self replyTemplateTitle contents: selectedReplyTemplate title