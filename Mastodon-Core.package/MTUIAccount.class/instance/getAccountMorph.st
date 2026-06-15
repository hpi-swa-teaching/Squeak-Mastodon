render
getAccountMorph

	| accountMorph start stop text currentUserId |
	text := MTUtils asTextFromHtml: '<b>', self object displayName, '</b> ', '<i>@', self object federatedUsername, '</i>'.
	
	start := text indexOfSubCollection: '@'.
	stop := start + self object federatedUsername asString size.
	
	text
		addAttribute: (PluggableTextAttribute new
			evalBlock: [:obj |
				currentUserId := self owner mastodonApi getCurrentUser value id.
				currentUserId = self object id
					ifTrue: [self owner owner owner owner loadProfileViewOfCurrentUser: self object]
					ifFalse: [self owner owner owner owner loadProfileViewOf: self object]];
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