defaults
buttonBalloonText

	^ self active ifTrue: [self buttonBalloonTextWhenActive] ifFalse: [self buttonBalloonTextWhenInactive]