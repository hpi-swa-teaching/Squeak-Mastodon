accessing-buttons
whoCanQuoteButton

	^ whoCanQuoteButton ifNil: [
		whoCanQuoteButton := self getWhoCanQuoteButton.
		self updateWhoCanQuoteButton.
		^ whoCanQuoteButton]