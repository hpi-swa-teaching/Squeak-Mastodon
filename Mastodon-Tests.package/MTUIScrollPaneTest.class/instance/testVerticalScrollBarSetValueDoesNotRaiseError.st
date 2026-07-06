scrollbars
testVerticalScrollBarSetValueDoesNotRaiseError

	| scrollPane |
	scrollPane := MTUIScrollPane new.
	
	self shouldnt: [scrollPane vScrollBar setValue: 1] raise: Error