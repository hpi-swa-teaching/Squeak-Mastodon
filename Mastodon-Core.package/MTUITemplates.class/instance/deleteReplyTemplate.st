delete-template
deleteReplyTemplate

	| replyTemplateAccess userTemplates menu selectedTemplateName |

	replyTemplateAccess := MTReplyTemplateAccess new.
	replyTemplateAccess user: self mastodonApi getCurrentUser value username.
	userTemplates := replyTemplateAccess templateDirectoryContent.
	
	menu := DialogWindow new.
	menu title: 'Choose template'.
	
	userTemplates do: [:template | 
		menu createButton: (template name) value: (template)].
	menu createCancelButton.
	self addMorph: menu.
	
	selectedTemplateName := menu getUserResponse name.
	(replyTemplateAccess deleteTemplate: selectedTemplateName)
		ifTrue: [ self showSuccessMessage: 'Template deleted successfully' ]
		ifFalse: []