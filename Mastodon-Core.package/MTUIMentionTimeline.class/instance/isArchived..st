as yet unclassified
isArchived: anInteger

	| dir |
	dir := FileDirectory default directoryNamed: 'archives'.
	^ dir fileExists: anInteger asString