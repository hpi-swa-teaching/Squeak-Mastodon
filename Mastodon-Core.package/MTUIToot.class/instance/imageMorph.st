as yet unclassified
imageMorph
	image := MTMedia imageMorphFrom: ((self toot media at: 1 ifAbsent: [ ^ nil ]) previewUrl).
	image
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #spaceFill;
		layoutInset: 0; 
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		setNewImageFrom: (image form scaledToSize: 300).
		
	^ image