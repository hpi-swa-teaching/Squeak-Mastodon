render
imageMorph
	| img |
	img := MTMedia imageMorphFrom: ((self toot media at: 1 ifAbsent: [ ^ nil ]) previewUrl).
	(img isNil or: [img form isNil]) ifTrue: [^ nil].
	img
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		layoutInset: 0; 
		cellInset: 10;
		wrapCentering: #topLeft;
		listCentering: #topLeft;
		color: Color transparent;
		setNewImageFrom: (img form scaledToSize: 300).
		
	^ img