render
getAccountMorph

	| accountMorph start stop text currentUserId |
	text := MTUtils asTextFromHtml: '<b>', self object account displayName, '</b> ', '<i>@', self object account federatedUsername, '<font color="', self htmlGray, '">', self interaction, '</font></i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self object account federatedUsername asString size.
	
	text
		addAttribute: (PluggableTextAttribute new
			evalBlock: [:obj |
				currentUserId := MTMastodonApi getInstance getCurrentUser value id.
				currentUserId = self object account id
					ifTrue: [MTUIWindow instance loadProfileViewForCurrentUser]
					ifFalse: [MTUIWindow instance loadProfileViewOf: self object account]];
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