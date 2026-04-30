render
avatarMorph
	| container img |
	container := Morph new 
		extent: 48@48; 
		color: Color gray;
		vResizing: #rigid;
		hResizing: #rigid.
	
	img := MTMedia imageMorphFrom: self toot acct avatar.
	(img notNil and: [img form notNil]) ifTrue: [
		container color: Color transparent.
		img 
			setNewImageFrom: (img form scaledToSize: 48);
			hResizing: #rigid;
			vResizing: #rigid;
			extent: 48@48.
		container addMorph: img.
	].
	^ container