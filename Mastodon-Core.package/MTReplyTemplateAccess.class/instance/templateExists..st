file operations
templateExists: aTemplateName

	| dir |
	dir := FileDirectory on: self baseDir.
	^ dir fileExists: aTemplateName