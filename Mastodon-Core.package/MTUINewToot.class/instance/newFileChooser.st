image
newFileChooser

	^ FileChooser new
		initializeAsSystemWindowWithCaptionPane;
		setCaption: 'Select a picture file' translated;
		setSuffixes: #('png' 'gif' 'jpg' 'jpeg');
		yourself