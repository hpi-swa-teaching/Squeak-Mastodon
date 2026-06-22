render
accountMorph

	| nameText |
	accountMorph ifNotNil: [^ accountMorph].
	nameText := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', self account displayName, '</b> ', '<i><a href="mastodonUser:', self account id, '">@', self account acct, '</a></i>').
	nameText
		wrapFlag: true;
		autoFit: true;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap.
	accountMorph := Morph new.
	accountMorph
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0;
		cellInset: 5;
		wrapCentering: #center;
		listCentering: #topLeft;
		color: Color transparent;
		addMorphBack: nameText.
	^ accountMorph