file operations
deleteTemplate: aTemplateTitle

	(self templateExists: aTemplateTitle)
		ifTrue: [
			(FileDirectory on: './replyTemplates/', self user) deleteFileNamed: aTemplateTitle.
			^ true]
		ifFalse: [^ false]