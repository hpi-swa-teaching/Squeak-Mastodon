accessing-buttons
closeButton

	^ closeButton ifNil: [closeButton := self getCloseButton]