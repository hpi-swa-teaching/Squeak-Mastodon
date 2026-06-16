render
getProfileContainer

	^ (MTUIView applyWrapperLayoutTo:  RectangleMorph new)
		color: (Color r: 0.1 g: 0.2 b: 0.3);
		cellPositioning: #center;
		wrapCentering: #center;
		cellInset: 20;
		layoutInset: 20;
		borderWidth: 0