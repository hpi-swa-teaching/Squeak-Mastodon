file operations
templateExists: aTemplate
	| dir |
	dir := FileDirectory on: './replyTemplates/', self user.
	^ dir fileExists: aTemplate