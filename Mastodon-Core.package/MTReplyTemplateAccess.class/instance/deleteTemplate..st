file operations
deleteTemplate: aTemplateTitle

	(self templateExists: aTemplateTitle)
		ifTrue: [
			(FileDirectory on: self baseDir) deleteFileNamed: aTemplateTitle.
			^ true]
		ifFalse: [^ false]