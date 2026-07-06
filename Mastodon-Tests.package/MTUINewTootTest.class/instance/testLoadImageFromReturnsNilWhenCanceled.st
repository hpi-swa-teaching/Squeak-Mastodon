image
testLoadImageFromReturnsNilWhenCanceled

	| editor chooser |
	editor := MTUINewToot new.
	chooser := MTFileChooserClassTest new stream: nil.
	
	self assert: (editor loadImageFrom: chooser) equals: nil