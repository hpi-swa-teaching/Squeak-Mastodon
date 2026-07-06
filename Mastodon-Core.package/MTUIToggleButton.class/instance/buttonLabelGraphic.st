defaults
buttonLabelGraphic

	^ self active
		ifTrue: [self buttonLabelGraphicWhenActive]
		ifFalse: [self buttonLabelGraphicWhenInactive]