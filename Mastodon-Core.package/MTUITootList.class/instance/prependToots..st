updating
prependToots: anOrderedCollection
	"Adds new toots which were posted since the last api request"

	anOrderedCollection isEmpty ifTrue: [^ self].
	self toots: anOrderedCollection, self toots.
	self maxID: anOrderedCollection first id.
	self render