accessing-buttons
blockButton

	^ blockButton ifNil: [blockButton := self getBlockButton]