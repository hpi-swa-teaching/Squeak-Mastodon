render
getMediaMorph

	| media image |
	self object media size = 0 ifTrue: [^ nil].
	
	media := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		vResizing: #shrinkWrap;
		layoutInset: -5;
		cellInset: 5;
		color: Color white.
	
	self object media do: [:source |
		image := MTUIImageMorph new setNewImageFrom: (self mastodonApi imageFormFrom: source previewUrl).
		image
			cornerRadius: 20;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap;
			color: Color transparent;
			setNewImageFrom: (image form scaledToSize: 300).
		
		media addMorphBack: image].
	
	^ media