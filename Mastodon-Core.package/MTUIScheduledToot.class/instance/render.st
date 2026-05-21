render
render

	self
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 10;
		cellInset: 0;
		cellPositioning: #topLeft;
		wrapCentering: #leftTop;
		color: Color white;
		addMorphBack: self contentMorph.
	"addMorphBack: self avatarMorph."
	self layoutChanged