actions
favoriteTootWithId: aTootId fromSender: aSender
	| toot |
	toot := self tootWithId: aTootId.
	toot ifNil: [^ self].
	(self api favourite: toot)
		ifNotNil: [:result | 
			result isError
				ifTrue: [self inform: result value]
				ifFalse: [self updateToot: result value]]
		ifNil: [self inform: 'Unknown error from API'].
	self changed: #getLabel.
	self updateToots.
	self changed: #tootViews.