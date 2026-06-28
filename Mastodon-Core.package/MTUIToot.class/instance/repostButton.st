accessing
repostButton

	^ repostButton ifNil: [repostButton := self getRepostButton]