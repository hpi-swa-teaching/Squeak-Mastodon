scrollbars
testHorizontalScrollBarSetValueDoesNotRaiseError

	| scrollPane |
	scrollPane := MTUIScrollPane new.
	
	self shouldnt: [scrollPane hScrollBar setValue: 1] raise: Error