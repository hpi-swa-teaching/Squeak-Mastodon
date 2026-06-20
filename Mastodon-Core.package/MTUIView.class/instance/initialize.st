initialization
initialize

	super initialize.
	self mastodonApi: MTProviderFactory providerFromSettings.
	self
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		cellInset: 0;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #topLeft;
		color: Color white