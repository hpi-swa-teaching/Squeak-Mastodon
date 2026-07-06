morphic
testAddButtonNoError

	| menuBar form |
	menuBar := MTUIMenu new.
	form := Form extent: 400 @ 400 depth: 32.
	
	self shouldnt: [menuBar addButton: #home for: #openHome on: Object new with: form] raise: Error