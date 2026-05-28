render
initMedia

	self media: (MTMedia imageMorphFrom: (self toot media at: 1 ifAbsent: [^ nil]) previewUrl).
	self media cornerRadius: 20.
	self media
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		color: Color transparent;
		setNewImageFrom: (self media form scaledToSize: 300)