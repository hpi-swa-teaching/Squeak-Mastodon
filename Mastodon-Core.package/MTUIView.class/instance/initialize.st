initialization
initialize

	super initialize.
	self mastodonApi: MTMastodonApi getInstance.
	self
		layoutPolicy: TableLayout new;
		listDirection: #topToBottom;
		cellPositioning: #topLeft;
		cellInset: 0;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		wrapCentering: #topLeft;
		color: Color white