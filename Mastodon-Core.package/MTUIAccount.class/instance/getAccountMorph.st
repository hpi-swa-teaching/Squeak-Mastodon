render
getAccountMorph

	| accountMorph start stop text currentUserId |
	text := MTUtils asTextFromHtml: '<b>', self account displayName, '</b> ', '<i>@', self account federatedUsername, '</i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self account federatedUsername asString size.
	
	text
		addAttribute: (PluggableTextAttribute new
			evalBlock: [:obj |
				currentUserId := self mastodonApi getCurrentUser value id.
				currentUserId = self account id
					ifTrue: [MTUIWindow instance loadProfileViewForCurrentUser]
					ifFalse: [MTUIWindow instance loadProfileViewOf: self account]];
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