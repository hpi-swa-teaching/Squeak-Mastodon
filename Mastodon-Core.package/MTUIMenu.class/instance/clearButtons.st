morphic
clearButtons

	self buttons do: [:button | button delete].
	self buttons: OrderedCollection new