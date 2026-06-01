as yet unclassified
archiveTootWithId: anInteger fromSender: aButton

	| dir stream |
	dir := FileDirectory default directoryNamed: 'archives'.
	dir assureExistence.
	
	stream := dir forceNewFileNamed: anInteger asString.
	
	stream nextPutAll: anInteger asString.
	stream close.
	
	self renderMention