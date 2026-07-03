morphic
clearButtons

	self buttons do: [:button | button delete].
	buttons := OrderedCollection new