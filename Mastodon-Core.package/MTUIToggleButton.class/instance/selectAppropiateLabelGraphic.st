actions
selectAppropiateLabelGraphic

	self labelGraphic: (self active 
		ifTrue: [self buttonLabelGraphicWhenActive] 
		ifFalse: [self buttonLabelGraphicWhenInactive])