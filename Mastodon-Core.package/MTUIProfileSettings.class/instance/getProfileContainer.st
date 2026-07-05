render-container
getProfileContainer

	^ (MTUIView applyWrapperLayoutTo: RectangleMorph new)
		color: self profileBannerColor;
		cellPositioning: #center;
		wrapCentering: #center;
		cellInset: 20;
		layoutInset: 20;
		borderWidth: 0