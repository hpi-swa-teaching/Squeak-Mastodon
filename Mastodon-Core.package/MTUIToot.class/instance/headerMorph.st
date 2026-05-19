render
headerMorph
	| nameText |
	header ifNotNil: [^ header].
	nameText := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: (
		'<b>' , self toot acct displayName , '</b> ',
		'<i><a href="mastodonUser:', self toot acct id , '">@', self toot acct acct , '</a></i>')).
	nameText
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #shrinkWrap.
	header := Morph new.
	header
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
	^ header