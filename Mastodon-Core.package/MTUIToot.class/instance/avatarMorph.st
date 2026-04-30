render
avatarMorph
	| placeholder |
	image := MTMedia imageMorphFrom: self toot acct avatar.
	(image isNil or: [image form isNil]) ifTrue: [
		placeholder := Morph new 
			extent: 48@48; 
			color: Color gray;
			vResizing: #spaceFill;
			hResizing: #shrinkWrap.
		^ placeholder].
	image
		vResizing: #spaceFill;
		hResizing: #shrinkWrap;
		setNewImageFrom: (image form scaledToSize: 48).
	^ image