file operations
templateDirectoryContent

	| dir |
	dir := FileDirectory on: (self baseDir).
	^ dir fileEntries