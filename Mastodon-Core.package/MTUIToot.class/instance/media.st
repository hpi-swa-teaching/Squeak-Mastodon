render
media

	| media |
	media := MTMedia imageMorphFrom: (self object media at: 1 ifAbsent: [^ nil]) previewUrl.
	media
		cornerRadius: 20;
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent;
		setNewImageFrom: (media form scaledToSize: 300).
	
	^ media