render
accountMorph

	account ifNotNil: [^ account].
	profileLink := MTUIProfileLinkMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self toot acct displayName, '</b> ', '<i><a href="mastodonUser:', self toot acct id, '">@', self toot acct acct, '</a></i>').
	profileLink
		wrapFlag: true;
		autoFit: true;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	account := Morph new.
	account
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 5;
		wrapCentering: #center;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: profileLink.
	^ account