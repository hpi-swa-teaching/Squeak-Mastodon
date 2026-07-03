render
headerMorph

	self header ifNotNil: [^ self header].
	profileLink := MTUIProfileLinkMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self account displayName, '</b> ', '<i><a href="mastodonUser:', self account id, '">@', self account acct, '</a></i>').
	profileLink
		wrapFlag: true;
		autoFit: true;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	header := Morph new.
	self header
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
	^ self header