render
useReplyTemplates

	| replyTemplateAccess userTemplates menu selectedTemplateName selectedReplyTemplate |
	replyTemplateAccess := MTReplyTemplateAccess new.
	replyTemplateAccess user: self mastodonApi getCurrentUser value username.
	userTemplates := replyTemplateAccess templateDirectoryContent.
	
	menu := DialogWindow new.
	menu title: 'Choose template'.
	userTemplates do: [:template | menu createButton: template name value: template].
	menu createCancelButton.
	self addMorph: menu.
	
	selectedTemplateName := menu getUserResponse.
	selectedTemplateName = false ifTrue: [^ false].
	selectedReplyTemplate := replyTemplateAccess readTemplate: selectedTemplateName.
	
	self updateContent: self tootTextArea contents, selectedReplyTemplate content.
	^ true