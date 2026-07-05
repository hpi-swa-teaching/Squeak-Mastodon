file operations
deleteTemplate: aTemplateTitle

	(self templateExists: aTemplateTitle)
		ifTrue: [
			(FileDirectory on: (FileDirectory default fullNameFor: 'replyTemplates/', self user)) deleteFileNamed: aTemplateTitle.
			^ true]
		ifFalse: [^ false]