render
headerMorph

	self header ifNotNil: [^ self header].
	self profileLink: (MTUIProfileLinkMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self account displayName, '</b> ', '<i><a href="mastodonUser:', self account id, '">@', self account acct, '</a></i>')).
	self profileLink
		wrapFlag: true;
		autoFit: true;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	self header: Morph new.
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
		addMorphBack: self profileLink.
	^ self header