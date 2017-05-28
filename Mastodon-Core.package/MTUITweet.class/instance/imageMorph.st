as yet unclassified
imageMorph
	image := STMedia imageMorphFrom: ((self tweet media at: 1 ifAbsent: [ ^ nil ]) mediaUrl).
	image
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0; 
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		setNewImageFrom: (image form scaledToSize: 300).
		
	^ image