accessing
directTootButton

	^ directTootButton ifNil: [directTootButton := self getDirectTootButton]