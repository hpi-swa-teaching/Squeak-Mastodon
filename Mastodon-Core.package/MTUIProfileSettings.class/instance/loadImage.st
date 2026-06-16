actions
loadImage

	| fc stream |
	fc := FileChooser new
		initializeAsSystemWindowWithCaptionPane;
		setCaption: 'Select a picture file' translated;
		setSuffixes: {'png'. 'gif'. 'bmp'. 'jpg'. 'jpeg'}.
	
	stream := fc open.
	
	^ stream ifNotNil: [Form fromBinaryStream: stream]