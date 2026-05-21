render
textMorph

	| scheduledAt stream |
	stream := AttributedTextStream new.
	scheduledAt := MTUtils timestampFromString: self toot scheduledAt.
	scheduledAt asDateAndTime printOn: stream.
	text := TextMorph new contentsWrapped: (MTUtils asTextFromHtml: '<b>', 'username', '</b> ', '<i><a href="mastodonUser:', 'account id', '">@', 'account name', '</a></i>', '<br>', self toot params text, '<br>', '<i><font color="#555555">', stream contents, '</font></i>').
	text
		wrapFlag: true;
		autoFit: true;
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill.
	
	^ text