inialization
initialize: aNumber
	super initialize: aNumber.
	self at: #demoURL put: self demoURL;
		at: #demoToken put: self demoToken.