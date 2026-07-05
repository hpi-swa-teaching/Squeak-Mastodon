file operations
templateDirectoryContent

	| dir |
	dir := FileDirectory on: (FileDirectory default fullNameFor: 'replyTemplates/', self user).
	^ dir fileEntries