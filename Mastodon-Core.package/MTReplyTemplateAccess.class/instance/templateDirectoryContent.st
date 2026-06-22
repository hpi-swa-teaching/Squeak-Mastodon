file operations
templateDirectoryContent
	| dir |
	dir := FileDirectory on: './replyTemplates/', self user.
	^ dir fileEntries