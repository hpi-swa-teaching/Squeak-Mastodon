render
getMediaMorph

	| media |
	self object media size = 0 ifTrue: [^ nil].
	
	media := Morph new
		layoutPolicy: TableLayout new;
		listDirection: #leftToRight;
		wrapDirection: #topToBottom;
		vResizing: #shrinkWrap;
		layoutInset: -5;
		cellInset: 5;
		color: Color white.
	
	self object media do: [:source | | form image |
		form := self mastodonApi imageFormFrom: source url.
		image := (MTUIImageMorph new setNewImageFrom: form size: self defaultImageSize)
			cornerRadius: self defaultCornerRadius;
			hResizing: #shrinkWrap;
			vResizing: #shrinkWrap.
		
		media addMorphBack: image].
	
	^ media