render
getAccountMorph

	| accountMorph start stop text currentUserId |
	text := MTUtils asTextFromHtml: '<b>', self object account displayName, '</b> ', '<i>@', self object account federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	currentUserId := MTMastodonApi getInstance getCurrentUser value id.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self object account federatedUsername asString size.
	self makeClickable: text from: start to: stop for: self object account and: currentUserId.
	
	interaction ifNotNil: [
		start := text indexOfSubCollection: '@' startingAt: stop.
		start = 0 ifFalse: [
			stop := text size.
			self
				makeClickable: text
				from: start
				to: stop
				for: (MTAccount getAccountFromId: self object inReplyToAccountID)
				and: currentUserId]].
	
	accountMorph := TextMorph new contentsWrapped: text.
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph