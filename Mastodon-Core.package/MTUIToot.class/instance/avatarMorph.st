render
avatarMorph
	| container img |
	container := Morph new 
		extent: 48@48; 
		color: (Color gray alpha: 0.1);
		layoutPolicy: TableLayout new;
		vResizing: #rigid;
		hResizing: #rigid.
	
	img := MTMedia imageMorphFrom: self toot acct avatar.
	(img notNil and: [img form notNil]) ifTrue: [
		container color: Color transparent.
		img 
			setNewImageFrom: (img form scaledToSize: 48);
			hResizing: #spaceFill;
			vResizing: #spaceFill.
		container addMorph: img.
	].
	^ container