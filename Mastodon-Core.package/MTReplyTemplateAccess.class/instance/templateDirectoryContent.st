file operations
templateDirectoryContent
	| dir |
	dir := FileDirectory on: './replyTemplates/test'.
	^ dir fileEntries