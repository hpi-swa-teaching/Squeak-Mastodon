render
getBaseUrlField

	^ baseUrlField ifNil: [
		baseUrlField := MTLineEdit new
			hResizing: #spaceFill;
			height: 36;
			helpText: 'Enter Server URL here e.g. mastodon.social']