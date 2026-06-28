accessing
blockButton

	^ blockButton ifNil: [blockButton := self getBlockButton]