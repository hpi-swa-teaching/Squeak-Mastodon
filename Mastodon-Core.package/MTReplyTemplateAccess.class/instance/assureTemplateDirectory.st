file operations
assureTemplateDirectory
	(FileDirectory on: (FileDirectory default fullNameFor: 'replyTemplates/', self user)) assureExistence.