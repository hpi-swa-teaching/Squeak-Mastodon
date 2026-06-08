as yet unclassified
archiveTootWithId: anInteger

	| dir stream |
	dir := FileDirectory default directoryNamed: 'archives'.
	dir assureExistence.
	
	stream := dir forceNewFileNamed: anInteger asString.
	
	stream nextPutAll: anInteger asString.
	stream close.
	
	self collectMentions