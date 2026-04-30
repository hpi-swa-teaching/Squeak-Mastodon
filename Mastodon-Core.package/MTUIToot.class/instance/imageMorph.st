render
imageMorph
	| img |
	img := MTMedia imageMorphFrom: ((self toot media at: 1 ifAbsent: [ ^ nil ]) previewUrl).
	(img isNil or: [img form isNil]) ifTrue: [^ nil].
	img
		hResizing: #shrinkWrap;
		vResizing: #shrinkWrap;
		setNewImageFrom: (img form scaledToSize: 300).
		
	^ img