accessing
starButton

	^ starButton ifNil: [starButton := self getStarButton]