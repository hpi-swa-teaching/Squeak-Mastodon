image
testLoadImageFromReturnsForm

	| editor chooser form |
	editor := MTUINewToot new.
	
	chooser := MTFileChooserClassTest new stream: self pngTestStream.
	
	form := editor loadImageFrom: chooser.
	
	self assert: form class equals: Form