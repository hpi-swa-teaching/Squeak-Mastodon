actions
selectAppropiateBalloonText

	self balloonText: (self active
		ifTrue: [self buttonBalloonTextWhenActive]
		ifFalse: [self buttonBalloonTextWhenInactive])