file operations
templateExists: aTemplateName

	| dir |
	dir := FileDirectory on: './replyTemplates/', self user.
	^ dir fileExists: aTemplateName