render
renderFeedToolbar

	| toolbar feedButton addButton removeButton |
	self feedToolbar ifNotNil: [
		self removeMorph: self feedToolbar.
		self feedToolbar delete].
	toolbar := Morph new.
	toolbar
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		cellPositioning: #center;
		hResizing: #spaceFill;
		vResizing: #rigid;
		height: 40;
		color: Color white;
		cellInset: 4;
		layoutInset: 4.
	feedButton := UiPushButton new.
	feedButton
		text: self selectedFeed displayName;
		hResizing: #rigid;
		width: 260;
		height: 32.
	self connect: feedButton signal: #clicked: toSelector: #chooseFeed.
	toolbar addMorphBack: feedButton.
	addButton := UiPushButton new.
	addButton
		text: '+';
		hResizing: #rigid;
		width: 32;
		height: 32.
	self connect: addButton signal: #clicked: toSelector: #addFeed.
	toolbar addMorphBack: addButton.
	removeButton := UiPushButton new.
	removeButton
		text: '-';
		hResizing: #rigid;
		width: 32;
		height: 32.
	self connect: removeButton signal: #clicked: toSelector: #removeFeed.
	toolbar addMorphBack: removeButton.
	feedToolbar := toolbar.
	self addMorphBack: self feedToolbar