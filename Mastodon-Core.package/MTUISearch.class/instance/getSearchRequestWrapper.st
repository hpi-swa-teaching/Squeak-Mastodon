render
getSearchRequestWrapper

	^ (MTUIView applyWrapperLayoutTo: RectangleMorph new)
		color: Color transparent;
		borderWidth: 0;
		wrapCentering: #leftCenter;
		addMorphBack: self searchTextField;
		addMorphBack: self searchButton;
		yourself