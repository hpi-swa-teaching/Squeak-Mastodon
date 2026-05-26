as yet unclassified
archiveTootWithId: anInteger fromSender: aButton

	aButton active ifFalse: [
		self mastodonApi reblog: anInteger.
		aButton active: true]
	"toDo"