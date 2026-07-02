edit-template
editReplyTemplate

	| userTemplates menu replyTemplateAccess selectedTemplateName selectedReplyTemplate |
	replyTemplateAccess := MTReplyTemplateAccess new.
	replyTemplateAccess user: self mastodonApi getCurrentUser value username.
	userTemplates := replyTemplateAccess templateDirectoryContent.
	
	menu := DialogWindow new.
	menu title: 'Choose template'.
	
	userTemplates do: [:template | menu createButton: template name value: template].
	menu createCancelButton.
	self addMorph: menu.
	
	selectedTemplateName := menu getUserResponse.
	selectedReplyTemplate := replyTemplateAccess readTemplate: selectedTemplateName.
	self showSuccessMessage: 'Template deleted successfully'.
	self replyTemplateTextArea contents: selectedReplyTemplate content.
	self replyTemplateTitle contents: selectedReplyTemplate title