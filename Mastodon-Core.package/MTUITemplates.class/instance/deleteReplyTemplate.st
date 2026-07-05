delete-template
deleteReplyTemplate

	| replyTemplateAccess userTemplates selectedTemplateName |
	replyTemplateAccess := MTReplyTemplateAccess new.
	replyTemplateAccess user: self mastodonApi getCurrentUser value username.
	userTemplates := replyTemplateAccess templateDirectoryContent.
	selectedTemplateName := (self chooseTemplate: userTemplates) name.
	selectedTemplateName = false ifTrue: [^ self].
	
	(replyTemplateAccess deleteTemplate: selectedTemplateName) ifTrue: [
		MTUtils
			showSuccessMessage: 'Template deleted successfully'
			on: self]