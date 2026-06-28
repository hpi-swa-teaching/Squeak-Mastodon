render
getAccountMorph
	| accountMorph start stop text currentUserId account |
	account := self toot account.
	text := MTUtils asTextFromHtml: '<b>', account displayName, '</b> ', '<i>@', account federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + account federatedUsername asString size.
	self makeClickable: text from: start to: stop for: self object account.
	
	interaction ifNotNil: [
		start := text indexOfSubCollection: '@' startingAt: stop.
		start = 0 ifFalse: [
			stop := text size.
			self
				makeClickable: text
				from: start
				to: stop
				for: (MTAccount getAccountFromId: self object inReplyToAccountID)]].
	
	accountMorph := TextMorph new contentsWrapped: text.
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph