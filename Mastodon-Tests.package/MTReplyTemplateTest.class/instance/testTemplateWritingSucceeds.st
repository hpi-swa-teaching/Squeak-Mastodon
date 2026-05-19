as yet unclassified
testTemplateWritingSucceeds
	self assert: templateAccess templateDirectoryContent equals: ((FileDirectory on: './replyTemplates/FelixKoch') fileEntries).