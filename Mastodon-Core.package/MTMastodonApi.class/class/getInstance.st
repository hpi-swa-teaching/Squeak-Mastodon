accessing
getInstance

	^ instance ifNil: [instance := self new]