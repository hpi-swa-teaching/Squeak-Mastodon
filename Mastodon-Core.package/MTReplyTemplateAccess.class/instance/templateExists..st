file operations
templateExists: aTemplateName
	| dir |
	dir := FileDirectory on:(FileDirectory default fullNameFor: 'replyTemplates/', self user).
	^ dir fileExists: aTemplateName