updating
isArchived: anInteger

	| dir |
	dir := FileDirectory default directoryNamed: 'archives'.
	^ dir fileExists: anInteger asString