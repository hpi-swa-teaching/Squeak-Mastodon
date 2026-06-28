accessing
replyButton

	^ replyButton ifNil: [replyButton := self getReplyButton]