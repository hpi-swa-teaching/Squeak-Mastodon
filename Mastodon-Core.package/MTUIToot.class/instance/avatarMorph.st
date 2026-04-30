render
avatarMorph
	| placeholder |
	image := MTMedia imageMorphFrom: self toot acct avatar.
	(image isNil or: [image form isNil]) ifTrue: [
		placeholder := Morph new 
			extent: 48@48; 
			color: Color gray;
			vResizing: #rigid;
			hResizing: #rigid.
		^ placeholder].
	image
		extent: 48@48;
		vResizing: #rigid;
		hResizing: #rigid;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image