as yet unclassified
removeOldMorph
	self imageMorph ifNotNil: [ self removeMorph: self imageMorph ].
	self imageMorph: nil.