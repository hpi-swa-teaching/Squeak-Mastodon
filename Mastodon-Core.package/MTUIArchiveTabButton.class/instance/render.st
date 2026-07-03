render
render

	| text |
	super render.
	
	self
		color: (Color r: 0.85 g: 0.93 b: 1.0);
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		listCentering: #center;
		wrapCentering: #center;
		cellInset: 10.
	
	self labelGraphic: MTUIIcons archive.
	self setBalloonText: 'open archive'.
	
	text := TextMorph new.
	
	text
		contents: 'Archivierte Toots';
		lock.
	
	self addMorphBack: text.
	
	^ self