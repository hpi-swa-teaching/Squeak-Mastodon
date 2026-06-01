as yet unclassified
archivedIds

	| dir |
	dir := FileDirectory default directoryNamed: 'archives'.
	
	dir exists ifFalse: [^ Set new].
	
	^ dir fileNames asSet