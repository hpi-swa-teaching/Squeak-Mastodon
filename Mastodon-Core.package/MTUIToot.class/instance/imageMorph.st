render
imageMorph
	| container url |
	url := (self toot media at: 1 ifAbsent: [ ^ nil ]) previewUrl.
	container := Morph new
		color: (Color gray alpha: 0.05);
		hResizing: #spaceFill;
		vResizing: #shrinkWrap;
		extent: 300@200;
		layoutPolicy: TableLayout new.

	[ | img |
		img := MTMedia imageMorphFrom: url.
		(img notNil and: [img form notNil]) ifTrue: [
			Project current addDeferredUIMessage: [
				img
					hResizing: #shrinkWrap;
					vResizing: #shrinkWrap;
					setNewImageFrom: (img form scaledToSize: 300).
				container 
					color: Color transparent;
					addMorph: img;
					extent: img extent.
			].
		].
	] fork.
		
	^ container