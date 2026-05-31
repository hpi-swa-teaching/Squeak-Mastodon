actions
favoriteTootWithId: aTootId fromSender: aSender
	| toot argument |
	toot := self tootWithId: aTootId.
	toot ifNil: [^ self].
	argument := (self api isKindOf: MTBlueSkyApi)
		ifTrue: [toot]
		ifFalse: [aTootId].
	(self api favourite: argument)
		ifNotNil: [:result | 
			result isError
				ifTrue: [self inform: result value]
				ifFalse: [self updateToot: result value]]
		ifNil: [self inform: 'Unknown error from API'].
	self changed: #getLabel.
	self updateToots.
	self changed: #tootViews.