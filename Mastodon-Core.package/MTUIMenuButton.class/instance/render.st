as yet unclassified
render
	self
		height: 64;
		width: 64;
		borderWidth: 0;
		color: Color transparent.
	
	self active ifTrue: [
		self color: Color veryLightGray ].