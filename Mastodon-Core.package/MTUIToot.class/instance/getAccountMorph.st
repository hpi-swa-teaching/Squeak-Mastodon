render
getAccountMorph

	| accountMorph start stop text currentUserId account |
	account := self toot account.
	text := MTUtils asTextFromHtml: '<b>', account displayName, '</b> ', '<i>@', account federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + account federatedUsername asString size.
	
	text
		addAttribute: (PluggableTextAttribute new
			evalBlock: [:obj |
				currentUserId := MTMastodonApi getInstance getCurrentUser value id.
				currentUserId = account id
					ifTrue: [MTUIWindow instance loadProfileViewForCurrentUser]
					ifFalse: [MTUIWindow instance loadProfileViewOf: account]];
			yourself)
		from: start
		to: stop.
	
	accountMorph := TextMorph new contentsWrapped: text.
	accountMorph
		readOnly: true;
		wrapFlag: true;
		autoFit: true;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap.
	
	^ accountMorph