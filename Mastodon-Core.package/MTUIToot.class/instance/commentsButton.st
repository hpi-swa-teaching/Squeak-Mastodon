accessing
commentsButton

	^ commentsButton ifNil: [commentsButton := self getCommentsButton]