initialization
openWindow

	| windowHeight windowWidth |
	windowHeight := 700.
	windowWidth := 650.
	
	self openInWorld.
	^ self openInWorldExtent: windowWidth @ windowHeight