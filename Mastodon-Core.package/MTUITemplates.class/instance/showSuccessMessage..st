utilities
showSuccessMessage: aMessage

	| successfullyPerformedText |
	successfullyPerformedText := TextMorph new.
	successfullyPerformedText contents: aMessage;
								color: Color blue.
	self addMorphBack: successfullyPerformedText.
	
	[
		(Delay forSeconds: 3) wait.
		successfullyPerformedText delete.
	] fork