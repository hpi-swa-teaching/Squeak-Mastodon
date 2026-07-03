morphic
testAddButton

	| menuBar button target image |
	menuBar := MTUIMenu new.
	target := Object new.
	image := Form extent: 400 @ 400 depth: 32.
	
	menuBar addButton: #home for: #openHome on: target with: image.
	
	self assert: menuBar buttons size equals: 1.
	
	button := menuBar buttons first.
	
	self assert: button class equals: MTUIMenuButton.
	self assert: button id equals: #home.
	self assert: button target equals: target.
	self assert: button actionSelector equals: #openHome